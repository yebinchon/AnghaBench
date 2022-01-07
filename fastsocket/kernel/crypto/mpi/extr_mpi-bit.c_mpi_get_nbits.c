
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ mpi_limb_t ;
struct TYPE_4__ {int nlimbs; scalar_t__* d; } ;
typedef TYPE_1__* MPI ;


 unsigned int BITS_PER_MPI_LIMB ;
 int count_leading_zeros (unsigned int,scalar_t__) ;
 int mpi_normalize (TYPE_1__*) ;

unsigned
mpi_get_nbits( MPI a )
{
    unsigned n;

    mpi_normalize( a );

    if( a->nlimbs ) {
 mpi_limb_t alimb = a->d[a->nlimbs-1];
 if( alimb ) {
   count_leading_zeros( n, alimb );
 }
 else
     n = BITS_PER_MPI_LIMB;
 n = BITS_PER_MPI_LIMB - n + (a->nlimbs-1) * BITS_PER_MPI_LIMB;
    }
    else
 n = 0;
    return n;
}
