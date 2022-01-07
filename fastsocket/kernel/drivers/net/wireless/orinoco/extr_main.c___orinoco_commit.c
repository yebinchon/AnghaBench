
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {scalar_t__ tkip_cm_active; struct net_device* ndev; } ;
struct net_device {int dummy; } ;


 int __orinoco_set_multicast_list (struct net_device*) ;
 int orinoco_hw_program_rids (struct orinoco_private*) ;

__attribute__((used)) static int __orinoco_commit(struct orinoco_private *priv)
{
 struct net_device *dev = priv->ndev;
 int err = 0;





 priv->tkip_cm_active = 0;

 err = orinoco_hw_program_rids(priv);


 (void) __orinoco_set_multicast_list(dev);

 return err;
}
