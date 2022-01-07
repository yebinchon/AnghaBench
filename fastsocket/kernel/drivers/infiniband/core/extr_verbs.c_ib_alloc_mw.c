
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_pd {int usecnt; TYPE_1__* device; } ;
struct ib_mw {int type; int * uobject; struct ib_pd* pd; TYPE_1__* device; } ;
typedef enum ib_mw_type { ____Placeholder_ib_mw_type } ib_mw_type ;
struct TYPE_2__ {struct ib_mw* (* alloc_mw ) (struct ib_pd*,int) ;} ;


 int ENOSYS ;
 struct ib_mw* ERR_PTR (int ) ;
 int IS_ERR (struct ib_mw*) ;
 int atomic_inc (int *) ;
 struct ib_mw* stub1 (struct ib_pd*,int) ;

struct ib_mw *ib_alloc_mw(struct ib_pd *pd, enum ib_mw_type type)
{
 struct ib_mw *mw;

 if (!pd->device->alloc_mw)
  return ERR_PTR(-ENOSYS);

 mw = pd->device->alloc_mw(pd, type);
 if (!IS_ERR(mw)) {
  mw->device = pd->device;
  mw->pd = pd;
  mw->uobject = ((void*)0);
  mw->type = type;
  atomic_inc(&pd->usecnt);
 }

 return mw;
}
