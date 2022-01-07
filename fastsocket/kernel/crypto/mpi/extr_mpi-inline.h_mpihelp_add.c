
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mpi_size_t ;
typedef scalar_t__ mpi_ptr_t ;
typedef int mpi_limb_t ;


 int mpihelp_add_1 (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int mpihelp_add_n (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

mpi_limb_t
mpihelp_add(mpi_ptr_t res_ptr, mpi_ptr_t s1_ptr, mpi_size_t s1_size,
          mpi_ptr_t s2_ptr, mpi_size_t s2_size)
{
    mpi_limb_t cy = 0;

    if( s2_size )
 cy = mpihelp_add_n( res_ptr, s1_ptr, s2_ptr, s2_size );

    if( s1_size - s2_size )
 cy = mpihelp_add_1( res_ptr + s2_size, s1_ptr + s2_size,
       s1_size - s2_size, cy);
    return cy;
}
