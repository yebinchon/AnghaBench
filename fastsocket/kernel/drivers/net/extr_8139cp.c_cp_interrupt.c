
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int name; } ;
struct cp_private {int lock; int pdev; int mii_if; int napi; } ;
typedef int irqreturn_t ;


 int Cmd ;
 int CpCmd ;
 int IRQ_NONE ;
 int IRQ_RETVAL (int) ;
 int IntrMask ;
 int IntrStatus ;
 int LinkChg ;
 int PCI_STATUS ;
 int PciErr ;
 int RxEmpty ;
 int RxErr ;
 int RxFIFOOvr ;
 int RxOK ;
 int SWInt ;
 int TxEmpty ;
 int TxErr ;
 int TxOK ;
 int __napi_schedule (int *) ;
 int cp_norx_intr_mask ;
 int cp_rx_intr_mask ;
 int cp_tx (struct cp_private*) ;
 int cpr16 (int ) ;
 int cpr8 (int ) ;
 int cpw16 (int ,int) ;
 int cpw16_f (int ,int ) ;
 int mii_check_media (int *,int ,int) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct cp_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_intr (struct cp_private*) ;
 int netif_msg_link (struct cp_private*) ;
 int netif_running (struct net_device*) ;
 int pci_read_config_word (int ,int ,int*) ;
 int pci_write_config_word (int ,int ,int) ;
 int pr_debug (char*,int ,int,int ,int) ;
 int pr_err (char*,int ,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t cp_interrupt (int irq, void *dev_instance)
{
 struct net_device *dev = dev_instance;
 struct cp_private *cp;
 int handled = 0;
 u16 status;

 if (unlikely(dev == ((void*)0)))
  return IRQ_NONE;
 cp = netdev_priv(dev);

 spin_lock(&cp->lock);

 status = cpr16(IntrStatus);
 if (!status || (status == 0xFFFF))
  goto out_unlock;

 handled = 1;

 if (netif_msg_intr(cp))
  pr_debug("%s: intr, status %04x cmd %02x cpcmd %04x\n",
          dev->name, status, cpr8(Cmd), cpr16(CpCmd));

 cpw16(IntrStatus, status & ~cp_rx_intr_mask);


 if (unlikely(!netif_running(dev))) {
  cpw16(IntrMask, 0);
  goto out_unlock;
 }

 if (status & (RxOK | RxErr | RxEmpty | RxFIFOOvr))
  if (napi_schedule_prep(&cp->napi)) {
   cpw16_f(IntrMask, cp_norx_intr_mask);
   __napi_schedule(&cp->napi);
  }

 if (status & (TxOK | TxErr | TxEmpty | SWInt))
  cp_tx(cp);
 if (status & LinkChg)
  mii_check_media(&cp->mii_if, netif_msg_link(cp), 0);


 if (status & PciErr) {
  u16 pci_status;

  pci_read_config_word(cp->pdev, PCI_STATUS, &pci_status);
  pci_write_config_word(cp->pdev, PCI_STATUS, pci_status);
  pr_err("%s: PCI bus error, status=%04x, PCI status=%04x\n",
         dev->name, status, pci_status);


 }

out_unlock:
 spin_unlock(&cp->lock);

 return IRQ_RETVAL(handled);
}
