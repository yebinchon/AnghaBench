
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_pd {int usecnt; int * uobject; struct ib_device* device; } ;
struct ib_device {struct ib_pd* (* alloc_pd ) (struct ib_device*,int *,int *) ;} ;


 int IS_ERR (struct ib_pd*) ;
 int atomic_set (int *,int ) ;
 struct ib_pd* stub1 (struct ib_device*,int *,int *) ;

struct ib_pd *ib_alloc_pd(struct ib_device *device)
{
 struct ib_pd *pd;

 pd = device->alloc_pd(device, ((void*)0), ((void*)0));

 if (!IS_ERR(pd)) {
  pd->device = device;
  pd->uobject = ((void*)0);
  atomic_set(&pd->usecnt, 0);
 }

 return pd;
}
