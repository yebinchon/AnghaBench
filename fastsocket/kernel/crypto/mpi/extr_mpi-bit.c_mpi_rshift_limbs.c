
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int mpi_size_t ;
typedef scalar_t__* mpi_ptr_t ;
struct TYPE_3__ {unsigned int nlimbs; scalar_t__* d; } ;
typedef TYPE_1__* MPI ;



void
mpi_rshift_limbs( MPI a, unsigned int count )
{
    mpi_ptr_t ap = a->d;
    mpi_size_t n = a->nlimbs;
    unsigned int i;

    if( count >= n ) {
 a->nlimbs = 0;
 return;
    }

    for( i = 0; i < n - count; i++ )
 ap[i] = ap[i+count];
    ap[i] = 0;
    a->nlimbs -= count;
}
