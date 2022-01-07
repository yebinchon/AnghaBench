
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct TYPE_2__ {int sysbus; int busy; int pa_cmd; scalar_t__ status; scalar_t__ command; void* pa_scb; void* pa_iscp; scalar_t__ pad; } ;
struct i596_private {TYPE_1__ iscp; TYPE_1__ scp; int * cmd_head; scalar_t__ cmd_backlog; int last_cmd; TYPE_1__ scb; } ;


 int CA () ;
 int I596_NULL ;
 int PORT (void*,int ) ;
 int PORT_ALTSCP ;
 int PORT_RESET ;
 int barrier () ;
 int jiffies ;
 struct i596_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ) ;
 int udelay (int) ;
 void* va_to_pa (TYPE_1__*) ;

__attribute__((used)) static int
i596_scp_setup(struct net_device *dev) {
 struct i596_private *lp = netdev_priv(dev);
 int boguscnt;
 lp->scp.sysbus = 0x00440000;
 lp->scp.pad = 0;
 lp->scp.pa_iscp = va_to_pa(&(lp->iscp));




 lp->iscp.busy = 0x0001;
 lp->iscp.pa_scb = va_to_pa(&(lp->scb));

 lp->scb.command = 0;
 lp->scb.status = 0;
 lp->scb.pa_cmd = I596_NULL;


 lp->last_cmd = jiffies;
 lp->cmd_backlog = 0;
 lp->cmd_head = ((void*)0);






 PORT(0, PORT_RESET);
 udelay(100);





 PORT(va_to_pa(&lp->scp), PORT_ALTSCP);






 CA();




 boguscnt = 100;
 while (lp->iscp.busy) {
  if (--boguscnt == 0) {

   printk("%s: i82596 initialization timed out\n",
          dev->name);
   return 1;
  }
  udelay(5);
  barrier();
 }


 return 0;
}
