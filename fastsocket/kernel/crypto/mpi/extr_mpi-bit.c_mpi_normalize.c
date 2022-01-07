
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nlimbs; int * d; } ;
typedef TYPE_1__* MPI ;



void
mpi_normalize( MPI a )
{
    for( ; a->nlimbs && !a->d[a->nlimbs-1]; a->nlimbs-- )
 ;
}
