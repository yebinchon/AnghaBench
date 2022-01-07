
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv643xx_eth_shared_private {scalar_t__ err_interrupt; int smi_busy_wait; } ;


 int ETIMEDOUT ;
 scalar_t__ NO_IRQ ;
 int msecs_to_jiffies (int) ;
 int msleep (int) ;
 int smi_is_done (struct mv643xx_eth_shared_private*) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int smi_wait_ready(struct mv643xx_eth_shared_private *msp)
{
 if (msp->err_interrupt == NO_IRQ) {
  int i;

  for (i = 0; !smi_is_done(msp); i++) {
   if (i == 10)
    return -ETIMEDOUT;
   msleep(10);
  }

  return 0;
 }

 if (!smi_is_done(msp)) {
  wait_event_timeout(msp->smi_busy_wait, smi_is_done(msp),
       msecs_to_jiffies(100));
  if (!smi_is_done(msp))
   return -ETIMEDOUT;
 }

 return 0;
}
