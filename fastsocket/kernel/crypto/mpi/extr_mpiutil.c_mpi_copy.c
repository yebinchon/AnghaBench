
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t nlimbs; int * d; int nbits; int flags; int sign; } ;
typedef TYPE_1__* MPI ;


 int ENOMEM ;
 TYPE_1__* MPI_NULL ;
 TYPE_1__* mpi_alloc (size_t) ;

int mpi_copy(MPI *copied, const MPI a )
{
 size_t i;
 MPI b;

 *copied = MPI_NULL;

 if ( a ) {
  b = mpi_alloc( a->nlimbs );
  if (!b)
   return -ENOMEM;

  b->nlimbs = a->nlimbs;
  b->sign = a->sign;
  b->flags = a->flags;
  b->nbits = a->nbits;

  for (i = 0; i < b->nlimbs; i++ )
   b->d[i] = a->d[i];

  *copied = b;
 }

 return 0;
}
