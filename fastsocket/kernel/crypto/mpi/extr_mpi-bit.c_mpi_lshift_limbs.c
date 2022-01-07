
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__* mpi_ptr_t ;
struct TYPE_4__ {int nlimbs; scalar_t__* d; } ;
typedef TYPE_1__* MPI ;


 int ENOMEM ;
 scalar_t__ RESIZE_IF_NEEDED (TYPE_1__*,int) ;

int
mpi_lshift_limbs( MPI a, unsigned int count )
{
    mpi_ptr_t ap = a->d;
    int n = a->nlimbs;
    int i;

    if( !count || !n )
 return 0;

    if (RESIZE_IF_NEEDED( a, n+count ) < 0) return -ENOMEM;

    for( i = n-1; i >= 0; i-- )
 ap[i+count] = ap[i];
    for(i=0; i < count; i++ )
 ap[i] = 0;
    a->nlimbs += count;
    return 0;
}
