
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpi_ptr_t ;
struct TYPE_3__ {unsigned int alloced; int d; } ;
typedef TYPE_1__* MPI ;


 int mpi_free_limb_space (int ) ;

void mpi_assign_limb_space(MPI a, mpi_ptr_t ap, unsigned nlimbs)
{
    mpi_free_limb_space(a->d);
    a->d = ap;
    a->alloced = nlimbs;
}
