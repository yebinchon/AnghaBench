
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int alloced; scalar_t__ nbits; scalar_t__ flags; scalar_t__ sign; scalar_t__ nlimbs; int * d; } ;
typedef TYPE_1__* MPI ;


 int GFP_KERNEL ;
 int kfree (TYPE_1__*) ;
 scalar_t__ kmalloc (int,int ) ;
 int * mpi_alloc_limb_space (unsigned int) ;

MPI mpi_alloc(unsigned nlimbs)
{
 MPI a;

 a = (MPI) kmalloc(sizeof *a,GFP_KERNEL);
 if (!a)
  return a;

 if (nlimbs) {
  a->d = mpi_alloc_limb_space(nlimbs);
  if (!a->d) {
   kfree(a);
   return ((void*)0);
  }
 }
 else {
  a->d = ((void*)0);
 }

 a->alloced = nlimbs;
 a->nlimbs = 0;
 a->sign = 0;
 a->flags = 0;
 a->nbits = 0;
 return a;
}
