
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t mpi_size_t ;
typedef int* mpi_ptr_t ;
typedef int mpi_limb_t ;


 int MPN_COPY (int*,int*,size_t) ;
 int MPN_ZERO (int*,size_t) ;
 int mpihelp_add_n (int*,int*,int*,size_t) ;
 int mpihelp_addmul_1 (int*,int*,size_t,int) ;
 int mpihelp_mul_1 (int*,int*,size_t,int) ;

void
mpih_sqr_n_basecase( mpi_ptr_t prodp, mpi_ptr_t up, mpi_size_t size )
{
    mpi_size_t i;
    mpi_limb_t cy_limb;
    mpi_limb_t v_limb;



    v_limb = up[0];
    if( v_limb <= 1 ) {
 if( v_limb == 1 )
     MPN_COPY( prodp, up, size );
 else
     MPN_ZERO(prodp, size);
 cy_limb = 0;
    }
    else
 cy_limb = mpihelp_mul_1( prodp, up, size, v_limb );

    prodp[size] = cy_limb;
    prodp++;



    for( i=1; i < size; i++) {
 v_limb = up[i];
 if( v_limb <= 1 ) {
     cy_limb = 0;
     if( v_limb == 1 )
  cy_limb = mpihelp_add_n(prodp, prodp, up, size);
 }
 else
     cy_limb = mpihelp_addmul_1(prodp, up, size, v_limb);

 prodp[size] = cy_limb;
 prodp++;
    }
}
