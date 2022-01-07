
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MPI ;


 int ENOMEM ;
 scalar_t__ mpi_fdiv_r (int ,int ,int ) ;
 scalar_t__ mpi_sub (int ,int ,int ) ;

int
mpi_subm( MPI w, MPI u, MPI v, MPI m)
{
 if (mpi_sub(w, u, v) < 0 ||
     mpi_fdiv_r( w, w, m ) < 0)
  return -ENOMEM;
 return 0;
}
