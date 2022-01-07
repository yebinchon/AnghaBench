
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int mcast_work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void lbs_set_multicast_list(struct net_device *dev)
{
 struct lbs_private *priv = dev->ml_priv;

 schedule_work(&priv->mcast_work);
}
