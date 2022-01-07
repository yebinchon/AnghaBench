
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_xrcd {int tgt_qp_list; int tgt_qp_mutex; int usecnt; int * inode; struct ib_device* device; } ;
struct ib_device {struct ib_xrcd* (* alloc_xrcd ) (struct ib_device*,int *,int *) ;} ;


 int ENOSYS ;
 struct ib_xrcd* ERR_PTR (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int IS_ERR (struct ib_xrcd*) ;
 int atomic_set (int *,int ) ;
 int mutex_init (int *) ;
 struct ib_xrcd* stub1 (struct ib_device*,int *,int *) ;

struct ib_xrcd *ib_alloc_xrcd(struct ib_device *device)
{
 struct ib_xrcd *xrcd;

 if (!device->alloc_xrcd)
  return ERR_PTR(-ENOSYS);

 xrcd = device->alloc_xrcd(device, ((void*)0), ((void*)0));
 if (!IS_ERR(xrcd)) {
  xrcd->device = device;
  xrcd->inode = ((void*)0);
  atomic_set(&xrcd->usecnt, 0);
  mutex_init(&xrcd->tgt_qp_mutex);
  INIT_LIST_HEAD(&xrcd->tgt_qp_list);
 }

 return xrcd;
}
