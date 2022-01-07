
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; int * ml_priv; int name; } ;
struct claw_privbk {TYPE_2__* p_env; TYPE_1__* channel; } ;
struct ccwgroup_device {int * cdev; int dev; } ;
struct TYPE_4__ {int * ndev; } ;
struct TYPE_3__ {struct net_device* ndev; } ;


 int CLAW_DBF_TEXT_ (int,int ,char*,int ) ;
 int ENODEV ;
 int IFF_RUNNING ;
 size_t READ ;
 size_t WRITE ;
 int ccw_device_set_offline (int ) ;
 int claw_free_netdevice (struct net_device*,int) ;
 int claw_release (struct net_device*) ;
 struct claw_privbk* dev_get_drvdata (int *) ;
 int dev_info (int *,char*,int ) ;
 int dev_name (int *) ;
 int setup ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int
claw_shutdown_device(struct ccwgroup_device *cgdev)
{
 struct claw_privbk *priv;
 struct net_device *ndev;
 int ret;

 CLAW_DBF_TEXT_(2, setup, "%s", dev_name(&cgdev->dev));
 priv = dev_get_drvdata(&cgdev->dev);
 if (!priv)
  return -ENODEV;
 ndev = priv->channel[READ].ndev;
 if (ndev) {

  dev_info(&cgdev->dev, "%s: shutting down \n",
   ndev->name);
  if (ndev->flags & IFF_RUNNING)
   ret = claw_release(ndev);
  ndev->flags &=~IFF_RUNNING;
  unregister_netdev(ndev);
  ndev->ml_priv = ((void*)0);
  claw_free_netdevice(ndev, 1);
  priv->channel[READ].ndev = ((void*)0);
  priv->channel[WRITE].ndev = ((void*)0);
  priv->p_env->ndev = ((void*)0);
 }
 ccw_device_set_offline(cgdev->cdev[1]);
 ccw_device_set_offline(cgdev->cdev[0]);
 return 0;
}
