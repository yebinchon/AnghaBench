
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int sign; scalar_t__ nlimbs; } ;
typedef TYPE_1__* MPI ;


 int ENOMEM ;
 scalar_t__ mpi_add (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ mpi_copy (TYPE_1__**,TYPE_1__*) ;
 int mpi_free (TYPE_1__*) ;
 scalar_t__ mpi_tdiv_qr (int *,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

int
mpi_fdiv_r( MPI rem, MPI dividend, MPI divisor )
{
 int rc = -ENOMEM;
 int divisor_sign = divisor->sign;
 MPI temp_divisor = ((void*)0);




 if( rem == divisor ) {
  if (mpi_copy( &temp_divisor, divisor ) < 0) goto nomem;
  divisor = temp_divisor;
 }

 if (mpi_tdiv_qr(((void*)0), rem, dividend, divisor ) < 0) goto nomem;
 if( ((divisor_sign?1:0) ^ (dividend->sign?1:0)) && rem->nlimbs )
  if (mpi_add( rem, rem, divisor) < 0) goto nomem;

 rc = 0;

 nomem:
 if( temp_divisor )
  mpi_free(temp_divisor);
 return rc;
}
