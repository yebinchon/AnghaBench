
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpi_ptr_t ;


 int kfree (int ) ;

void mpi_free_limb_space( mpi_ptr_t a )
{
    if( !a )
 return;

    kfree(a);
}
