
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long* d; int nlimbs; scalar_t__ sign; } ;
typedef TYPE_1__* MPI ;


 TYPE_1__* mpi_alloc (int) ;

MPI mpi_alloc_set_ui(unsigned long u)
{
 MPI w = mpi_alloc(1);
 if (!w)
  return w;
 w->d[0] = u;
 w->nlimbs = u? 1:0;
 w->sign = 0;
 return w;
}
