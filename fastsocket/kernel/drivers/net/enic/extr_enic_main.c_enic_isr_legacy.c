
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct enic {int * intr; int * napi; int reset; int legacy_pba; } ;
typedef int irqreturn_t ;


 scalar_t__ ENIC_TEST_INTR (int ,unsigned int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __napi_schedule (int *) ;
 unsigned int enic_legacy_err_intr () ;
 unsigned int enic_legacy_io_intr () ;
 unsigned int enic_legacy_notify_intr () ;
 int enic_log_q_error (struct enic*) ;
 int enic_notify_check (struct enic*) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct enic* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;
 int vnic_intr_legacy_pba (int ) ;
 int vnic_intr_mask (int *) ;
 int vnic_intr_return_all_credits (int *) ;
 int vnic_intr_unmask (int *) ;

__attribute__((used)) static irqreturn_t enic_isr_legacy(int irq, void *data)
{
 struct net_device *netdev = data;
 struct enic *enic = netdev_priv(netdev);
 unsigned int io_intr = enic_legacy_io_intr();
 unsigned int err_intr = enic_legacy_err_intr();
 unsigned int notify_intr = enic_legacy_notify_intr();
 u32 pba;

 vnic_intr_mask(&enic->intr[io_intr]);

 pba = vnic_intr_legacy_pba(enic->legacy_pba);
 if (!pba) {
  vnic_intr_unmask(&enic->intr[io_intr]);
  return IRQ_NONE;
 }

 if (ENIC_TEST_INTR(pba, notify_intr)) {
  vnic_intr_return_all_credits(&enic->intr[notify_intr]);
  enic_notify_check(enic);
 }

 if (ENIC_TEST_INTR(pba, err_intr)) {
  vnic_intr_return_all_credits(&enic->intr[err_intr]);
  enic_log_q_error(enic);

  schedule_work(&enic->reset);
  return IRQ_HANDLED;
 }

 if (ENIC_TEST_INTR(pba, io_intr)) {
  if (napi_schedule_prep(&enic->napi[0]))
   __napi_schedule(&enic->napi[0]);
 } else {
  vnic_intr_unmask(&enic->intr[io_intr]);
 }

 return IRQ_HANDLED;
}
