
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ rev; } ;
struct TYPE_11__ {TYPE_4__* qs; } ;
struct adapter {int flags; TYPE_6__ params; int name; TYPE_5__ sge; TYPE_2__* pdev; TYPE_1__* msix_info; } ;
struct TYPE_9__ {int polling; } ;
struct TYPE_10__ {TYPE_3__ rspq; } ;
struct TYPE_8__ {int irq; } ;
struct TYPE_7__ {int vec; int desc; } ;


 int A_TP_INT_CAUSE ;
 int A_TP_INT_ENABLE ;
 int A_TP_PARA_REG5 ;
 int A_ULPRX_TDDP_PSZ ;
 int CH_ERR (struct adapter*,char*,int) ;
 int CH_WARN (struct adapter*,char*,int ,int ,int ,char*) ;
 int EINVAL ;
 int FULL_INIT_DONE ;
 int FW_VERSION_MAJOR ;
 int FW_VERSION_MICRO ;
 int FW_VERSION_MINOR ;
 int F_ARPLUTPERR ;
 int F_CMCACHEPERR ;
 int F_RXDDPOFFINIT ;
 int IRQF_SHARED ;
 int NAPI_INIT ;
 scalar_t__ PAGE_SHIFT ;
 int QUEUES_BOUND ;
 scalar_t__ T3_REV_C ;
 int TP_PARITY_INIT ;
 int TP_VERSION_MAJOR ;
 int TP_VERSION_MICRO ;
 int TP_VERSION_MINOR ;
 int USING_MSI ;
 int USING_MSIX ;
 int V_HPZ0 (scalar_t__) ;
 int bind_qsets (struct adapter*) ;
 int enable_all_napi (struct adapter*) ;
 int free_irq (int ,struct adapter*) ;
 int free_irq_resources (struct adapter*) ;
 int init_napi (struct adapter*) ;
 scalar_t__ init_tp_parity (struct adapter*) ;
 scalar_t__ is_offload (struct adapter*) ;
 int name_msix_vecs (struct adapter*) ;
 int request_irq (int ,int ,int ,int ,struct adapter*) ;
 int request_msix_data_irqs (struct adapter*) ;
 int setup_rss (struct adapter*) ;
 int setup_sge_qsets (struct adapter*) ;
 int t3_async_intr_handler ;
 int t3_check_fw_version (struct adapter*) ;
 int t3_check_tpsram_version (struct adapter*) ;
 int t3_init_hw (struct adapter*,int ) ;
 int t3_intr_clear (struct adapter*) ;
 int t3_intr_disable (struct adapter*) ;
 int t3_intr_enable (struct adapter*) ;
 int t3_intr_handler (struct adapter*,int ) ;
 int t3_set_reg_field (struct adapter*,int ,int ,int ) ;
 int t3_sge_start (struct adapter*) ;
 int t3_start_sge_timers (struct adapter*) ;
 int t3_write_reg (struct adapter*,int ,int) ;
 int update_tpsram (struct adapter*) ;
 int upgrade_fw (struct adapter*) ;

__attribute__((used)) static int cxgb_up(struct adapter *adap)
{
 int err;

 if (!(adap->flags & FULL_INIT_DONE)) {
  err = t3_check_fw_version(adap);
  if (err == -EINVAL) {
   err = upgrade_fw(adap);
   CH_WARN(adap, "FW upgrade to %d.%d.%d %s\n",
    FW_VERSION_MAJOR, FW_VERSION_MINOR,
    FW_VERSION_MICRO, err ? "failed" : "succeeded");
  }

  err = t3_check_tpsram_version(adap);
  if (err == -EINVAL) {
   err = update_tpsram(adap);
   CH_WARN(adap, "TP upgrade to %d.%d.%d %s\n",
    TP_VERSION_MAJOR, TP_VERSION_MINOR,
    TP_VERSION_MICRO, err ? "failed" : "succeeded");
  }






  t3_intr_clear(adap);

  err = t3_init_hw(adap, 0);
  if (err)
   goto out;

  t3_set_reg_field(adap, A_TP_PARA_REG5, 0, F_RXDDPOFFINIT);
  t3_write_reg(adap, A_ULPRX_TDDP_PSZ, V_HPZ0(PAGE_SHIFT - 12));

  err = setup_sge_qsets(adap);
  if (err)
   goto out;

  setup_rss(adap);
  if (!(adap->flags & NAPI_INIT))
   init_napi(adap);

  t3_start_sge_timers(adap);
  adap->flags |= FULL_INIT_DONE;
 }

 t3_intr_clear(adap);

 if (adap->flags & USING_MSIX) {
  name_msix_vecs(adap);
  err = request_irq(adap->msix_info[0].vec,
      t3_async_intr_handler, 0,
      adap->msix_info[0].desc, adap);
  if (err)
   goto irq_err;

  err = request_msix_data_irqs(adap);
  if (err) {
   free_irq(adap->msix_info[0].vec, adap);
   goto irq_err;
  }
 } else if ((err = request_irq(adap->pdev->irq,
          t3_intr_handler(adap,
            adap->sge.qs[0].rspq.
            polling),
          (adap->flags & USING_MSI) ?
           0 : IRQF_SHARED,
          adap->name, adap)))
  goto irq_err;

 enable_all_napi(adap);
 t3_sge_start(adap);
 t3_intr_enable(adap);

 if (adap->params.rev >= T3_REV_C && !(adap->flags & TP_PARITY_INIT) &&
     is_offload(adap) && init_tp_parity(adap) == 0)
  adap->flags |= TP_PARITY_INIT;

 if (adap->flags & TP_PARITY_INIT) {
  t3_write_reg(adap, A_TP_INT_CAUSE,
        F_CMCACHEPERR | F_ARPLUTPERR);
  t3_write_reg(adap, A_TP_INT_ENABLE, 0x7fbfffff);
 }

 if (!(adap->flags & QUEUES_BOUND)) {
  int ret = bind_qsets(adap);

  if (ret < 0) {
   CH_ERR(adap, "failed to bind qsets, err %d\n", ret);
   t3_intr_disable(adap);
   free_irq_resources(adap);
   err = ret;
   goto out;
  }
  adap->flags |= QUEUES_BOUND;
 }

out:
 return err;
irq_err:
 CH_ERR(adap, "request_irq failed, err %d\n", err);
 goto out;
}
