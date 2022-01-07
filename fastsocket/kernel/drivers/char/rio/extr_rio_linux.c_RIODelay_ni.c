
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Port {int dummy; } ;


 int RIO_DEBUG_DELAY ;
 int RIO_FAIL ;
 int func_enter () ;
 int func_exit () ;
 int jiffies_to_msecs (int) ;
 int msleep (int ) ;
 int rio_dprintk (int ,char*,int) ;

int RIODelay_ni(struct Port *PortP, int njiffies)
{
 func_enter();

 rio_dprintk(RIO_DEBUG_DELAY, "delaying %d jiffies (ni)\n", njiffies);
 msleep(jiffies_to_msecs(njiffies));
 func_exit();
 return !RIO_FAIL;
}
