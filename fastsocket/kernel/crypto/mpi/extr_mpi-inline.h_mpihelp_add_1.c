
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpi_size_t ;
typedef int * mpi_ptr_t ;
typedef scalar_t__ mpi_limb_t ;



mpi_limb_t
mpihelp_add_1( mpi_ptr_t res_ptr, mpi_ptr_t s1_ptr,
        mpi_size_t s1_size, mpi_limb_t s2_limb)
{
    mpi_limb_t x;

    x = *s1_ptr++;
    s2_limb += x;
    *res_ptr++ = s2_limb;
    if( s2_limb < x ) {
 while( --s1_size ) {
     x = *s1_ptr++ + 1;
     *res_ptr++ = x;
     if( x )
  goto leave;
 }
 return 1;
    }

  leave:
    if( res_ptr != s1_ptr ) {
 mpi_size_t i;
 for( i=0; i < s1_size-1; i++ )
     res_ptr[i] = s1_ptr[i];
    }
    return 0;
}
