
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {unsigned int phy_irq_pin; } ;
struct at91_private {scalar_t__ phy_type; int lock; int phy_address; int check_timer; TYPE_1__ board_data; } ;


 scalar_t__ MII_BCM5221_ID ;
 int MII_BCMINTR_REG ;
 scalar_t__ MII_DM9161A_ID ;
 scalar_t__ MII_DM9161_ID ;
 scalar_t__ MII_DP83848_ID ;
 int MII_DPMICR_REG ;
 int MII_DPMISR_REG ;
 int MII_DSINTR_REG ;
 int MII_ISINTE_REG ;
 scalar_t__ MII_KS8721_ID ;
 scalar_t__ MII_LXT971A_ID ;
 int MII_T78Q21INT_REG ;
 scalar_t__ MII_T78Q21x3_ID ;
 int MII_TPISTATUS ;
 int del_timer_sync (int *) ;
 int disable_mdi () ;
 int enable_mdi () ;
 int free_irq (unsigned int,struct net_device*) ;
 struct at91_private* netdev_priv (struct net_device*) ;
 int read_phy (int ,int ,unsigned int*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int write_phy (int ,int ,unsigned int) ;

__attribute__((used)) static void disable_phyirq(struct net_device *dev)
{
 struct at91_private *lp = netdev_priv(dev);
 unsigned int dsintr;
 unsigned int irq_number;

 irq_number = lp->board_data.phy_irq_pin;
 if (!irq_number) {
  del_timer_sync(&lp->check_timer);
  return;
 }

 spin_lock_irq(&lp->lock);
 enable_mdi();

 if ((lp->phy_type == MII_DM9161_ID) || (lp->phy_type == MII_DM9161A_ID)) {
  read_phy(lp->phy_address, MII_DSINTR_REG, &dsintr);
  dsintr = dsintr | 0xf00;
  write_phy(lp->phy_address, MII_DSINTR_REG, dsintr);
 }
 else if (lp->phy_type == MII_LXT971A_ID) {
  read_phy(lp->phy_address, MII_ISINTE_REG, &dsintr);
  dsintr = dsintr & ~0xf2;
  write_phy(lp->phy_address, MII_ISINTE_REG, dsintr);
 }
 else if (lp->phy_type == MII_BCM5221_ID) {
  read_phy(lp->phy_address, MII_BCMINTR_REG, &dsintr);
  dsintr = ~(1 << 14);
  write_phy(lp->phy_address, MII_BCMINTR_REG, dsintr);
 }
 else if (lp->phy_type == MII_KS8721_ID) {
  read_phy(lp->phy_address, MII_TPISTATUS, &dsintr);
  dsintr = ~((1 << 10) | (1 << 8));
  write_phy(lp->phy_address, MII_TPISTATUS, dsintr);
 }
 else if (lp->phy_type == MII_T78Q21x3_ID) {
  read_phy(lp->phy_address, MII_T78Q21INT_REG, &dsintr);
  dsintr = dsintr & ~0x500;
  write_phy(lp->phy_address, MII_T78Q21INT_REG, dsintr);
 }
 else if (lp->phy_type == MII_DP83848_ID) {
  read_phy(lp->phy_address, MII_DPMICR_REG, &dsintr);
  dsintr = dsintr & ~0x3;
  write_phy(lp->phy_address, MII_DPMICR_REG, dsintr);
  read_phy(lp->phy_address, MII_DPMISR_REG, &dsintr);
  dsintr = dsintr & ~0x3c;
  write_phy(lp->phy_address, MII_DPMISR_REG, dsintr);
 }

 disable_mdi();
 spin_unlock_irq(&lp->lock);

 free_irq(irq_number, dev);
}
