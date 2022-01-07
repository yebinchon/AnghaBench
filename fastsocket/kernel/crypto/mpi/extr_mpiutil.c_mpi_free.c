
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; struct TYPE_5__* d; } ;
typedef TYPE_1__* MPI ;


 int kfree (TYPE_1__*) ;
 int mpi_free_limb_space (TYPE_1__*) ;
 int printk (char*) ;

void mpi_free(MPI a)
{
 if (!a)
  return;

 if (a->flags & 4)
  kfree(a->d);
 else {
  mpi_free_limb_space(a->d);
 }

 if (a->flags & ~7 )
  printk("invalid flag value in mpi\n");
 kfree(a);
}
