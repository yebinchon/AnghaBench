
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MPI ;


 int mpi_tdiv_qr (int *,int ,int ,int ) ;

int
mpi_tdiv_r( MPI rem, MPI num, MPI den)
{
    return mpi_tdiv_qr(((void*)0), rem, num, den );
}
