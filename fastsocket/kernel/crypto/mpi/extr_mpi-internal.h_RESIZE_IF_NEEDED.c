
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int alloced; } ;
typedef TYPE_1__* MPI ;


 int mpi_resize (TYPE_1__*,unsigned int) ;

__attribute__((used)) static inline int RESIZE_IF_NEEDED(MPI a, unsigned b)
{
 if (a->alloced < b)
  return mpi_resize(a,b);
 return 0;
}
