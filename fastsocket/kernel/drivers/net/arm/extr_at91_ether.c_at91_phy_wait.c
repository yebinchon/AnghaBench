
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91_EMAC_SR ;
 int AT91_EMAC_SR_IDLE ;
 int at91_emac_read (int ) ;
 int cpu_relax () ;
 int jiffies ;
 int printk (char*) ;
 scalar_t__ time_after (int,unsigned long) ;

__attribute__((used)) static inline void at91_phy_wait(void) {
 unsigned long timeout = jiffies + 2;

 while (!(at91_emac_read(AT91_EMAC_SR) & AT91_EMAC_SR_IDLE)) {
  if (time_after(jiffies, timeout)) {
   printk("at91_ether: MIO timeout\n");
   break;
  }
  cpu_relax();
 }
}
