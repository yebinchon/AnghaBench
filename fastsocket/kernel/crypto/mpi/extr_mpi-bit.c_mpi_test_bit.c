
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int mpi_limb_t ;
struct TYPE_3__ {unsigned int nlimbs; unsigned int* d; } ;
typedef TYPE_1__* MPI ;


 unsigned int A_LIMB_1 ;
 unsigned int BITS_PER_MPI_LIMB ;

int
mpi_test_bit( MPI a, unsigned n )
{
    unsigned limbno, bitno;
    mpi_limb_t limb;

    limbno = n / BITS_PER_MPI_LIMB;
    bitno = n % BITS_PER_MPI_LIMB;

    if( limbno >= a->nlimbs )
 return 0;
    limb = a->d[limbno];
    return (limb & (A_LIMB_1 << bitno))? 1: 0;
}
