
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct ks_net {struct net_device* netdev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_LCI ;
 int IRQ_LDI ;
 int IRQ_NONE ;
 int IRQ_RXI ;
 int IRQ_TXI ;
 int KS_ISR ;
 int KS_PMECR ;
 int PMECR_WKEVT_LINK ;
 int PMECR_WKEVT_MASK ;
 int ks_rcv (struct ks_net*,struct net_device*) ;
 int ks_rdreg16 (struct ks_net*,int ) ;
 int ks_restore_cmd_reg (struct ks_net*) ;
 int ks_save_cmd_reg (struct ks_net*) ;
 int ks_update_link_status (struct net_device*,struct ks_net*) ;
 int ks_wrreg16 (struct ks_net*,int ,int) ;
 scalar_t__ likely (int) ;
 int netif_wake_queue (struct net_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t ks_irq(int irq, void *pw)
{
 struct ks_net *ks = pw;
 struct net_device *netdev = ks->netdev;
 u16 status;


 ks_save_cmd_reg(ks);

 status = ks_rdreg16(ks, KS_ISR);
 if (unlikely(!status)) {
  ks_restore_cmd_reg(ks);
  return IRQ_NONE;
 }

 ks_wrreg16(ks, KS_ISR, status);

 if (likely(status & IRQ_RXI))
  ks_rcv(ks, netdev);

 if (unlikely(status & IRQ_LCI))
  ks_update_link_status(netdev, ks);

 if (unlikely(status & IRQ_TXI))
  netif_wake_queue(netdev);

 if (unlikely(status & IRQ_LDI)) {

  u16 pmecr = ks_rdreg16(ks, KS_PMECR);
  pmecr &= ~PMECR_WKEVT_MASK;
  ks_wrreg16(ks, KS_PMECR, pmecr | PMECR_WKEVT_LINK);
 }


 ks_restore_cmd_reg(ks);
 return IRQ_HANDLED;
}
