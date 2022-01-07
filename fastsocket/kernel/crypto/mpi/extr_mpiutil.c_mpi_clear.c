
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; scalar_t__ nbits; scalar_t__ nlimbs; } ;
typedef TYPE_1__* MPI ;



void mpi_clear(MPI a)
{
 a->nlimbs = 0;
 a->nbits = 0;
 a->flags = 0;
}
