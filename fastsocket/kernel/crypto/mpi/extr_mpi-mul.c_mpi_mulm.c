
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MPI ;


 int ENOMEM ;
 int mpi_fdiv_r (int ,int ,int ) ;
 scalar_t__ mpi_mul (int ,int ,int ) ;

int
mpi_mulm( MPI w, MPI u, MPI v, MPI m)
{
 if (mpi_mul(w, u, v) < 0)
  return -ENOMEM;
 return mpi_fdiv_r( w, w, m );
}
