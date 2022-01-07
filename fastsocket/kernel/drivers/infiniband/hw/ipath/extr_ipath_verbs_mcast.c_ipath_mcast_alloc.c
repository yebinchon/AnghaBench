
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
struct ipath_mcast {scalar_t__ n_attached; int refcount; int wait; int qp_list; union ib_gid mgid; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 struct ipath_mcast* kmalloc (int,int ) ;

__attribute__((used)) static struct ipath_mcast *ipath_mcast_alloc(union ib_gid *mgid)
{
 struct ipath_mcast *mcast;

 mcast = kmalloc(sizeof *mcast, GFP_KERNEL);
 if (!mcast)
  goto bail;

 mcast->mgid = *mgid;
 INIT_LIST_HEAD(&mcast->qp_list);
 init_waitqueue_head(&mcast->wait);
 atomic_set(&mcast->refcount, 0);
 mcast->n_attached = 0;

bail:
 return mcast;
}
