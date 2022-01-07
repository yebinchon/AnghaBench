
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MPI ;


 int ENOMEM ;
 scalar_t__ mpi_add (int ,int ,int ) ;
 scalar_t__ mpi_fdiv_r (int ,int ,int ) ;

int
mpi_addm( MPI w, MPI u, MPI v, MPI m)
{
 if (mpi_add(w, u, v) < 0 ||
     mpi_fdiv_r( w, w, m ) < 0)
  return -ENOMEM;
 return 0;
}
