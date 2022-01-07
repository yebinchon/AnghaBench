
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Port {int dummy; } ;


 int RIO_DEBUG_DELAY ;
 int RIO_FAIL ;
 int current ;
 int func_enter () ;
 int func_exit () ;
 int jiffies_to_msecs (int) ;
 int msleep_interruptible (int ) ;
 int rio_dprintk (int ,char*,int) ;
 scalar_t__ signal_pending (int ) ;

int RIODelay(struct Port *PortP, int njiffies)
{
 func_enter();

 rio_dprintk(RIO_DEBUG_DELAY, "delaying %d jiffies\n", njiffies);
 msleep_interruptible(jiffies_to_msecs(njiffies));
 func_exit();

 if (signal_pending(current))
  return RIO_FAIL;
 else
  return !RIO_FAIL;
}
