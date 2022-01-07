
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpi_size_t ;
typedef scalar_t__* mpi_ptr_t ;
typedef scalar_t__ mpi_limb_t ;


 int umul_ppmm (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

mpi_limb_t
mpihelp_mul_1( mpi_ptr_t res_ptr, mpi_ptr_t s1_ptr, mpi_size_t s1_size,
          mpi_limb_t s2_limb)
{
    mpi_limb_t cy_limb;
    mpi_size_t j;
    mpi_limb_t prod_high, prod_low;



    j = -s1_size;


    s1_ptr -= j;
    res_ptr -= j;

    cy_limb = 0;
    do {
 umul_ppmm( prod_high, prod_low, s1_ptr[j], s2_limb );
 prod_low += cy_limb;
 cy_limb = (prod_low < cy_limb?1:0) + prod_high;
 res_ptr[j] = prod_low;
    } while( ++j );

    return cy_limb;
}
