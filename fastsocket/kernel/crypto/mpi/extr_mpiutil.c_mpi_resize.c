
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpi_limb_t ;
struct TYPE_3__ {unsigned int alloced; void* d; } ;
typedef TYPE_1__* MPI ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kmalloc (unsigned int,int ) ;
 void* kzalloc (unsigned int,int ) ;
 int memcpy (void*,void*,int) ;

int mpi_resize(MPI a, unsigned nlimbs)
{
 void *p;

 if (nlimbs <= a->alloced)
  return 0;

 if (a->d) {
  p = kmalloc(nlimbs * sizeof(mpi_limb_t), GFP_KERNEL);
  if (!p)
   return -ENOMEM;
  memcpy(p, a->d, a->alloced * sizeof(mpi_limb_t));
  kfree(a->d);
  a->d = p;
 } else {
  a->d = kzalloc( nlimbs * sizeof(mpi_limb_t), GFP_KERNEL);
  if (!a->d)
   return -ENOMEM;
 }
 a->alloced = nlimbs;
 return 0;
}
