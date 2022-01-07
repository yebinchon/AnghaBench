
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_pd {TYPE_1__* device; int usecnt; } ;
struct TYPE_2__ {int (* dealloc_pd ) (struct ib_pd*) ;} ;


 int EBUSY ;
 scalar_t__ atomic_read (int *) ;
 int stub1 (struct ib_pd*) ;

int ib_dealloc_pd(struct ib_pd *pd)
{
 if (atomic_read(&pd->usecnt))
  return -EBUSY;

 return pd->device->dealloc_pd(pd);
}
