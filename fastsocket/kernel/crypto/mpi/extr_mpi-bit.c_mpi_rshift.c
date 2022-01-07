
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ mpi_size_t ;
typedef int mpi_ptr_t ;
struct TYPE_5__ {scalar_t__ nlimbs; int d; int sign; } ;
typedef TYPE_1__* MPI ;


 int ENOMEM ;
 int MPN_NORMALIZE (int ,scalar_t__) ;
 scalar_t__ RESIZE_IF_NEEDED (TYPE_1__*,size_t) ;
 int mpihelp_rshift (int ,int ,scalar_t__,unsigned int) ;

int
mpi_rshift( MPI x, MPI a, unsigned n )
{
    mpi_ptr_t xp;
    mpi_size_t xsize;

    xsize = a->nlimbs;
    x->sign = a->sign;
    if (RESIZE_IF_NEEDED(x, (size_t)xsize) < 0) return -ENOMEM;
    xp = x->d;

    if( xsize ) {
 mpihelp_rshift( xp, a->d, xsize, n);
 MPN_NORMALIZE( xp, xsize);
    }
    x->nlimbs = xsize;
    return 0;
}
