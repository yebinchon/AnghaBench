
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

__attribute__((used)) static mpi_limb_t
mul_n_basecase( mpi_ptr_t prodp, mpi_ptr_t up,
     mpi_ptr_t vp, mpi_size_t size)
{
    mpi_size_t i;
    mpi_limb_t cy;
    mpi_limb_t v_limb;



    v_limb = vp[0];
    if( v_limb <= 1 ) {
 if( v_limb == 1 )
     MPN_COPY( prodp, up, size );
 else
     MPN_ZERO( prodp, size );
 cy = 0;
    }
    else
 cy = mpihelp_mul_1( prodp, up, size, v_limb );

    prodp[size] = cy;
    prodp++;



    for( i = 1; i < size; i++ ) {
 v_limb = vp[i];
 if( v_limb <= 1 ) {
     cy = 0;
     if( v_limb == 1 )
        cy = mpihelp_add_n(prodp, prodp, up, size);
 }
 else
     cy = mpihelp_addmul_1(prodp, up, size, v_limb);

 prodp[size] = cy;
 prodp++;
    }

    return cy;
}
