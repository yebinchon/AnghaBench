
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MPI ;


 scalar_t__ mpi_test_bit (int const,int) ;

__attribute__((used)) static int
build_index(const MPI *exparray, int k, int i, int t )
{
    int j, bitno;
    int index = 0;

    bitno = t-i;
    for(j=k-1; j >= 0; j-- ) {
 index <<= 1;
 if( mpi_test_bit( exparray[j], bitno ) )
     index |= 1;
    }
    return index;
}
