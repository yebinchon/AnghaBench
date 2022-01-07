
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int* mpi_ptr_t ;
typedef int mpi_limb_t ;
struct TYPE_3__ {int* d; int nlimbs; } ;
typedef TYPE_1__* MPI ;


 int BYTES_PER_MPI_LIMB ;

int
mpi_getbyte( const MPI a, unsigned idx )
{
    int i, j;
    unsigned n;
    mpi_ptr_t ap;
    mpi_limb_t limb;

    ap = a->d;
    for(n=0,i=0; i < a->nlimbs; i++ ) {
 limb = ap[i];
 for( j=0; j < BYTES_PER_MPI_LIMB; j++, n++ )
     if( n == idx )
  return (limb >> j*8) & 0xff;
    }
    return -1;
}
