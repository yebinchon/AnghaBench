
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ulong ;
typedef scalar_t__ mpi_limb_t ;
struct TYPE_4__ {int nlimbs; scalar_t__* d; scalar_t__ sign; } ;
typedef TYPE_1__* MPI ;


 scalar_t__ mpihelp_mod_1 (scalar_t__*,int,scalar_t__) ;

ulong
mpi_fdiv_r_ui( MPI rem, MPI dividend, ulong divisor )
{
    mpi_limb_t rlimb;

    rlimb = mpihelp_mod_1( dividend->d, dividend->nlimbs, divisor );
    if( rlimb && dividend->sign )
 rlimb = divisor - rlimb;

    if( rem ) {
 rem->d[0] = rlimb;
 rem->nlimbs = rlimb? 1:0;
    }
    return rlimb;
}
