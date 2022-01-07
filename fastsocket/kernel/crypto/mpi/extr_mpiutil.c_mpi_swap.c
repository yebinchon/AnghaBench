
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcry_mpi {int dummy; } ;
typedef struct gcry_mpi* MPI ;



void mpi_swap(MPI a, MPI b)
{
 struct gcry_mpi tmp;

 tmp = *a; *a = *b; *b = tmp;
}
