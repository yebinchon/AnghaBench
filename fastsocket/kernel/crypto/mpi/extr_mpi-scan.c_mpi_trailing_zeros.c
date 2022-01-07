
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ mpi_limb_t ;
struct TYPE_3__ {unsigned int nlimbs; scalar_t__* d; } ;
typedef TYPE_1__* MPI ;


 scalar_t__ BITS_PER_MPI_LIMB ;
 int count_trailing_zeros (unsigned int,scalar_t__) ;

unsigned
mpi_trailing_zeros( const MPI a )
{
    unsigned n, count = 0;

    for(n=0; n < a->nlimbs; n++ ) {
 if( a->d[n] ) {
     unsigned nn;
     mpi_limb_t alimb = a->d[n];

     count_trailing_zeros( nn, alimb );
     count += nn;
     break;
 }
 count += BITS_PER_MPI_LIMB;
    }
    return count;

}
