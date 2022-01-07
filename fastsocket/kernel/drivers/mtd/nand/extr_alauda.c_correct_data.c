
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int nand_calculate_ecc (int *,void*,int *) ;
 int nand_correct_data (int *,void*,void*,int *) ;

__attribute__((used)) static void correct_data(void *buf, void *read_ecc,
  int *corrected, int *uncorrected)
{
 u8 calc_ecc[3];
 int err;

 nand_calculate_ecc(((void*)0), buf, calc_ecc);
 err = nand_correct_data(((void*)0), buf, read_ecc, calc_ecc);
 if (err) {
  if (err > 0)
   (*corrected)++;
  else
   (*uncorrected)++;
 }
}
