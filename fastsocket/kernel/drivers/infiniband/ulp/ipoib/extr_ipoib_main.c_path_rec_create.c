
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int raw; } ;
struct TYPE_6__ {int numb_path; int traffic_class; int pkey; int sgid; TYPE_1__ dgid; } ;
struct ipoib_path {TYPE_2__ pathrec; int neigh_list; int queue; struct net_device* dev; } ;
struct ipoib_dev_priv {TYPE_4__* broadcast; int pkey; int local_gid; } ;
struct TYPE_7__ {int traffic_class; } ;
struct TYPE_8__ {TYPE_3__ mcmember; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int cpu_to_be16 (int ) ;
 struct ipoib_path* kzalloc (int,int ) ;
 int memcpy (int ,void*,int) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static struct ipoib_path *path_rec_create(struct net_device *dev, void *gid)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 struct ipoib_path *path;

 if (!priv->broadcast)
  return ((void*)0);

 path = kzalloc(sizeof *path, GFP_ATOMIC);
 if (!path)
  return ((void*)0);

 path->dev = dev;

 skb_queue_head_init(&path->queue);

 INIT_LIST_HEAD(&path->neigh_list);

 memcpy(path->pathrec.dgid.raw, gid, sizeof (union ib_gid));
 path->pathrec.sgid = priv->local_gid;
 path->pathrec.pkey = cpu_to_be16(priv->pkey);
 path->pathrec.numb_path = 1;
 path->pathrec.traffic_class = priv->broadcast->mcmember.traffic_class;

 return path;
}
