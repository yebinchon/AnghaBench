
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int napi; } ;
struct ib_cq {int dummy; } ;


 int napi_schedule (int *) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;

void ipoib_ib_completion(struct ib_cq *cq, void *dev_ptr)
{
 struct net_device *dev = dev_ptr;
 struct ipoib_dev_priv *priv = netdev_priv(dev);

 napi_schedule(&priv->napi);
}
