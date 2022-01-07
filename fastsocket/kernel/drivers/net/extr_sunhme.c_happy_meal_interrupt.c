
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct happy_meal {int happy_lock; scalar_t__ gregs; } ;
typedef int irqreturn_t ;


 scalar_t__ GREG_STAT ;
 int GREG_STAT_ERRORS ;
 int GREG_STAT_MIFIRQ ;
 int GREG_STAT_RXTOHOST ;
 int GREG_STAT_TXALL ;
 int HMD (char*) ;
 int IRQ_HANDLED ;
 scalar_t__ happy_meal_is_not_so_happy (struct happy_meal*,int) ;
 int happy_meal_mif_interrupt (struct happy_meal*) ;
 int happy_meal_rx (struct happy_meal*,struct net_device*) ;
 int happy_meal_tx (struct happy_meal*) ;
 int hme_read32 (struct happy_meal*,scalar_t__) ;
 struct happy_meal* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t happy_meal_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct happy_meal *hp = netdev_priv(dev);
 u32 happy_status = hme_read32(hp, hp->gregs + GREG_STAT);

 HMD(("happy_meal_interrupt: status=%08x ", happy_status));

 spin_lock(&hp->happy_lock);

 if (happy_status & GREG_STAT_ERRORS) {
  HMD(("ERRORS "));
  if (happy_meal_is_not_so_happy(hp, happy_status))
   goto out;
 }

 if (happy_status & GREG_STAT_MIFIRQ) {
  HMD(("MIFIRQ "));
  happy_meal_mif_interrupt(hp);
 }

 if (happy_status & GREG_STAT_TXALL) {
  HMD(("TXALL "));
  happy_meal_tx(hp);
 }

 if (happy_status & GREG_STAT_RXTOHOST) {
  HMD(("RXTOHOST "));
  happy_meal_rx(hp, dev);
 }

 HMD(("done\n"));
out:
 spin_unlock(&hp->happy_lock);

 return IRQ_HANDLED;
}
