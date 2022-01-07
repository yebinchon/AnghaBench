
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_ah {struct ib_ah* ah; int ref; scalar_t__ last_send; struct net_device* dev; } ;
struct ib_pd {int dummy; } ;
struct ib_ah_attr {int dummy; } ;
struct ib_ah {int dummy; } ;


 int ENOMEM ;
 struct ipoib_ah* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct ib_ah*) ;
 struct ib_ah* ib_create_ah (struct ib_pd*,struct ib_ah_attr*) ;
 int ipoib_dbg (int ,char*,struct ib_ah*) ;
 int kfree (struct ipoib_ah*) ;
 struct ipoib_ah* kmalloc (int,int ) ;
 int kref_init (int *) ;
 int netdev_priv (struct net_device*) ;

struct ipoib_ah *ipoib_create_ah(struct net_device *dev,
     struct ib_pd *pd, struct ib_ah_attr *attr)
{
 struct ipoib_ah *ah;
 struct ib_ah *vah;

 ah = kmalloc(sizeof *ah, GFP_KERNEL);
 if (!ah)
  return ERR_PTR(-ENOMEM);

 ah->dev = dev;
 ah->last_send = 0;
 kref_init(&ah->ref);

 vah = ib_create_ah(pd, attr);
 if (IS_ERR(vah)) {
  kfree(ah);
  ah = (struct ipoib_ah *)vah;
 } else {
  ah->ah = vah;
  ipoib_dbg(netdev_priv(dev), "Created ah %p\n", ah->ah);
 }

 return ah;
}
