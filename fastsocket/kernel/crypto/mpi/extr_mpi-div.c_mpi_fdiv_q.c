
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MPI ;


 int ENOMEM ;
 int mpi_alloc (int ) ;
 int mpi_fdiv_qr (int ,int ,int ,int ) ;
 int mpi_free (int ) ;
 int mpi_get_nlimbs (int ) ;

int
mpi_fdiv_q( MPI quot, MPI dividend, MPI divisor )
{
    MPI tmp = mpi_alloc( mpi_get_nlimbs(quot) );
    if (!tmp)
     return -ENOMEM;
    mpi_fdiv_qr( quot, tmp, dividend, divisor);
    mpi_free(tmp);
    return 0;
}
