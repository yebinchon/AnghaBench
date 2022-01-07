
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int flags; struct claw_privbk* ml_priv; int name; } ;
struct claw_privbk {TYPE_1__* channel; } ;
struct TYPE_2__ {int * ndev; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int CLAW_DBF_TEXT_ (int,int ,char*,int ) ;
 int IFF_RUNNING ;
 size_t READ ;
 int claw_release (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int setup ;

__attribute__((used)) static void
claw_free_netdevice(struct net_device * dev, int free_dev)
{
 struct claw_privbk *privptr;

 CLAW_DBF_TEXT(2, setup, "free_dev");
 if (!dev)
  return;
 CLAW_DBF_TEXT_(2, setup, "%s", dev->name);
 privptr = dev->ml_priv;
 if (dev->flags & IFF_RUNNING)
  claw_release(dev);
 if (privptr) {
  privptr->channel[READ].ndev = ((void*)0);
 }
 dev->ml_priv = ((void*)0);





 CLAW_DBF_TEXT(2, setup, "free_ok");
}
