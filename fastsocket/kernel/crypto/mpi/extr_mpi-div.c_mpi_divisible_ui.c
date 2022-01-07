
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_3__ {int nlimbs; int d; } ;
typedef TYPE_1__* MPI ;


 int mpihelp_mod_1 (int ,int ,int ) ;

int
mpi_divisible_ui(MPI dividend, ulong divisor )
{
    return !mpihelp_mod_1( dividend->d, dividend->nlimbs, divisor );
}
