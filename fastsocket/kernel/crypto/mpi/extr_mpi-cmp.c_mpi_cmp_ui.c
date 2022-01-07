
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ mpi_limb_t ;
struct TYPE_4__ {int nlimbs; scalar_t__* d; scalar_t__ sign; } ;
typedef TYPE_1__* MPI ;


 int mpi_normalize (TYPE_1__*) ;

int
mpi_cmp_ui( MPI u, unsigned long v )
{
    mpi_limb_t limb = v;

    mpi_normalize( u );
    if( !u->nlimbs && !limb )
 return 0;
    if( u->sign )
 return -1;
    if( u->nlimbs > 1 )
 return 1;

    if( u->d[0] == limb )
 return 0;
    else if( u->d[0] > limb )
 return 1;
    else
 return -1;
}
