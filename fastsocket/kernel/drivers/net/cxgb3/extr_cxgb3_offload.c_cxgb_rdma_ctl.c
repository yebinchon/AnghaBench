
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct tp_mib_stats {int dummy; } ;
struct rdma_info {struct pci_dev* pdev; scalar_t__ kdb_addr; void* rqt_top; void* rqt_base; void* pbl_top; void* pbl_base; void* tpt_top; void* tpt_base; int udbell_len; int udbell_physbase; } ;
struct rdma_ctrlqp_setup {int size; int base_addr; } ;
struct rdma_cq_setup {int credit_thres; int credits; int ovfl_mode; int size; int base_addr; int id; } ;
struct rdma_cq_op {int credits; int op; int id; } ;
struct pci_dev {int dummy; } ;
struct mc7 {int dummy; } ;
struct ch_mem_range {int addr; int len; scalar_t__ buf; int mem_id; } ;
struct TYPE_2__ {int reg_lock; } ;
struct adapter {int stats_lock; TYPE_1__ sge; struct mc7 pmtx; struct mc7 pmrx; struct mc7 cm; scalar_t__ regs; struct pci_dev* pdev; } ;


 int ASYNC_NOTIF_RSPQ ;
 scalar_t__ A_SG_KDOORBELL ;
 int A_ULPRX_RQ_LLIMIT ;
 int A_ULPRX_RQ_ULIMIT ;
 int A_ULPTX_PBL_LLIMIT ;
 int A_ULPTX_PBL_ULIMIT ;
 int A_ULPTX_TPT_LLIMIT ;
 int A_ULPTX_TPT_ULIMIT ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int FW_RI_SGEEC_START ;
 int FW_RI_TID_START ;
 int MEM_CM ;
 int MEM_PMRX ;
 int MEM_PMTX ;







 int SGE_CNTXT_RDMA ;
 int pci_resource_len (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int t3_mc7_bd_read (struct mc7*,int,int,int *) ;
 void* t3_read_reg (struct adapter*,int ) ;
 int t3_sge_cqcntxt_op (struct adapter*,int ,int ,int ) ;
 int t3_sge_disable_cqcntxt (struct adapter*,unsigned int) ;
 int t3_sge_init_cqcntxt (struct adapter*,int ,int ,int ,int ,int ,int ,int ) ;
 int t3_sge_init_ecntxt (struct adapter*,int ,int ,int ,int ,int ,int ,int ,int,int ) ;
 int t3_tp_get_mib_stats (struct adapter*,struct tp_mib_stats*) ;

__attribute__((used)) static int cxgb_rdma_ctl(struct adapter *adapter, unsigned int req, void *data)
{
 int ret = 0;

 switch (req) {
 case 128: {
  struct rdma_info *rdma = data;
  struct pci_dev *pdev = adapter->pdev;

  rdma->udbell_physbase = pci_resource_start(pdev, 2);
  rdma->udbell_len = pci_resource_len(pdev, 2);
  rdma->tpt_base =
   t3_read_reg(adapter, A_ULPTX_TPT_LLIMIT);
  rdma->tpt_top = t3_read_reg(adapter, A_ULPTX_TPT_ULIMIT);
  rdma->pbl_base =
   t3_read_reg(adapter, A_ULPTX_PBL_LLIMIT);
  rdma->pbl_top = t3_read_reg(adapter, A_ULPTX_PBL_ULIMIT);
  rdma->rqt_base = t3_read_reg(adapter, A_ULPRX_RQ_LLIMIT);
  rdma->rqt_top = t3_read_reg(adapter, A_ULPRX_RQ_ULIMIT);
  rdma->kdb_addr = adapter->regs + A_SG_KDOORBELL;
  rdma->pdev = pdev;
  break;
 }
 case 133:{
  unsigned long flags;
  struct rdma_cq_op *rdma = data;


  spin_lock_irqsave(&adapter->sge.reg_lock, flags);
  ret = t3_sge_cqcntxt_op(adapter, rdma->id, rdma->op,
     rdma->credits);
  spin_unlock_irqrestore(&adapter->sge.reg_lock, flags);
  break;
 }
 case 130:{
  struct ch_mem_range *t = data;
  struct mc7 *mem;

  if ((t->addr & 7) || (t->len & 7))
   return -EINVAL;
  if (t->mem_id == MEM_CM)
   mem = &adapter->cm;
  else if (t->mem_id == MEM_PMRX)
   mem = &adapter->pmrx;
  else if (t->mem_id == MEM_PMTX)
   mem = &adapter->pmtx;
  else
   return -EINVAL;

  ret =
   t3_mc7_bd_read(mem, t->addr / 8, t->len / 8,
     (u64 *) t->buf);
  if (ret)
   return ret;
  break;
 }
 case 132:{
  struct rdma_cq_setup *rdma = data;

  spin_lock_irq(&adapter->sge.reg_lock);
  ret =
   t3_sge_init_cqcntxt(adapter, rdma->id,
     rdma->base_addr, rdma->size,
     ASYNC_NOTIF_RSPQ,
     rdma->ovfl_mode, rdma->credits,
     rdma->credit_thres);
  spin_unlock_irq(&adapter->sge.reg_lock);
  break;
 }
 case 134:
  spin_lock_irq(&adapter->sge.reg_lock);
  ret = t3_sge_disable_cqcntxt(adapter, *(unsigned int *)data);
  spin_unlock_irq(&adapter->sge.reg_lock);
  break;
 case 131:{
  struct rdma_ctrlqp_setup *rdma = data;

  spin_lock_irq(&adapter->sge.reg_lock);
  ret = t3_sge_init_ecntxt(adapter, FW_RI_SGEEC_START, 0,
      SGE_CNTXT_RDMA,
      ASYNC_NOTIF_RSPQ,
      rdma->base_addr, rdma->size,
      FW_RI_TID_START, 1, 0);
  spin_unlock_irq(&adapter->sge.reg_lock);
  break;
 }
 case 129: {
  spin_lock(&adapter->stats_lock);
  t3_tp_get_mib_stats(adapter, (struct tp_mib_stats *)data);
  spin_unlock(&adapter->stats_lock);
  break;
 }
 default:
  ret = -EOPNOTSUPP;
 }
 return ret;
}
