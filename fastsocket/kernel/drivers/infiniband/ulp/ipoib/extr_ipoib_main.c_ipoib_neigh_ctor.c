
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ipoib_neigh {int refcnt; int list; int queue; int daddr; struct net_device* dev; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int ipoib_cm_set (struct ipoib_neigh*,int *) ;
 struct ipoib_neigh* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static struct ipoib_neigh *ipoib_neigh_ctor(u8 *daddr,
          struct net_device *dev)
{
 struct ipoib_neigh *neigh;

 neigh = kzalloc(sizeof *neigh, GFP_ATOMIC);
 if (!neigh)
  return ((void*)0);

 neigh->dev = dev;
 memcpy(&neigh->daddr, daddr, sizeof(neigh->daddr));
 skb_queue_head_init(&neigh->queue);
 INIT_LIST_HEAD(&neigh->list);
 ipoib_cm_set(neigh, ((void*)0));

 atomic_set(&neigh->refcnt, 1);

 return neigh;
}
