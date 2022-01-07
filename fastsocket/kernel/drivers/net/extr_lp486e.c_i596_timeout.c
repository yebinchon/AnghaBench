
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct TYPE_2__ {scalar_t__ command; int status; } ;
struct i596_private {TYPE_1__ scb; } ;


 int barrier () ;
 struct i596_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ,char*,int ,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int
i596_timeout(struct net_device *dev, char *msg, int ct) {
 struct i596_private *lp;
 int boguscnt = ct;

 lp = netdev_priv(dev);
 while (lp->scb.command) {
  if (--boguscnt == 0) {
   printk("%s: %s timed out - stat %4.4x, cmd %4.4x\n",
          dev->name, msg,
          lp->scb.status, lp->scb.command);
   return 1;
  }
  udelay(5);
  barrier();
 }
 return 0;
}
