
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpi_size_t ;
typedef int* mpi_ptr_t ;
typedef int mpi_limb_t ;


 int BITS_PER_MPI_LIMB ;
 scalar_t__ UDIV_NEEDS_NORMALIZATION ;
 int UDIV_QRNND_PREINV (int,int,int,int,int,int) ;
 int UDIV_TIME ;
 int UMUL_TIME ;
 int count_leading_zeros (int,int) ;
 int udiv_qrnnd (int,int,int,int,int) ;

mpi_limb_t
mpihelp_mod_1(mpi_ptr_t dividend_ptr, mpi_size_t dividend_size,
          mpi_limb_t divisor_limb)
{
    mpi_size_t i;
    mpi_limb_t n1, n0, r;
    int dummy;


    if( !dividend_size )
 return 0;
    if( UDIV_TIME > (2 * UMUL_TIME + 6)
 && (UDIV_TIME - (2 * UMUL_TIME + 6)) * dividend_size > UDIV_TIME ) {
 int normalization_steps;

 count_leading_zeros( normalization_steps, divisor_limb );
 if( normalization_steps ) {
     mpi_limb_t divisor_limb_inverted;

     divisor_limb <<= normalization_steps;







     if( !(divisor_limb << 1) )
  divisor_limb_inverted = ~(mpi_limb_t)0;
     else
  udiv_qrnnd(divisor_limb_inverted, dummy,
      -divisor_limb, 0, divisor_limb);

     n1 = dividend_ptr[dividend_size - 1];
     r = n1 >> (BITS_PER_MPI_LIMB - normalization_steps);







     for( i = dividend_size - 2; i >= 0; i--) {
  n0 = dividend_ptr[i];
  UDIV_QRNND_PREINV(dummy, r, r,
       ((n1 << normalization_steps)
     | (n0 >> (BITS_PER_MPI_LIMB - normalization_steps))),
     divisor_limb, divisor_limb_inverted);
  n1 = n0;
     }
     UDIV_QRNND_PREINV(dummy, r, r,
         n1 << normalization_steps,
         divisor_limb, divisor_limb_inverted);
     return r >> normalization_steps;
 }
 else {
     mpi_limb_t divisor_limb_inverted;







     if( !(divisor_limb << 1) )
  divisor_limb_inverted = ~(mpi_limb_t)0;
     else
  udiv_qrnnd(divisor_limb_inverted, dummy,
       -divisor_limb, 0, divisor_limb);

     i = dividend_size - 1;
     r = dividend_ptr[i];

     if( r >= divisor_limb )
  r = 0;
     else
  i--;

     for( ; i >= 0; i--) {
  n0 = dividend_ptr[i];
  UDIV_QRNND_PREINV(dummy, r, r,
      n0, divisor_limb, divisor_limb_inverted);
     }
     return r;
 }
    }
    else {
 if( UDIV_NEEDS_NORMALIZATION ) {
     int normalization_steps;

     count_leading_zeros(normalization_steps, divisor_limb);
     if( normalization_steps ) {
  divisor_limb <<= normalization_steps;

  n1 = dividend_ptr[dividend_size - 1];
  r = n1 >> (BITS_PER_MPI_LIMB - normalization_steps);







  for(i = dividend_size - 2; i >= 0; i--) {
      n0 = dividend_ptr[i];
      udiv_qrnnd (dummy, r, r,
    ((n1 << normalization_steps)
    | (n0 >> (BITS_PER_MPI_LIMB - normalization_steps))),
    divisor_limb);
      n1 = n0;
  }
  udiv_qrnnd (dummy, r, r,
       n1 << normalization_steps,
       divisor_limb);
  return r >> normalization_steps;
     }
 }


 i = dividend_size - 1;
 r = dividend_ptr[i];

 if(r >= divisor_limb)
     r = 0;
 else
     i--;

 for(; i >= 0; i--) {
     n0 = dividend_ptr[i];
     udiv_qrnnd (dummy, r, r, n0, divisor_limb);
 }
 return r;
    }
}
