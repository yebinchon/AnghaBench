
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv0900_internal {int dummy; } ;
typedef enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;


 int ERR_CNT10 ;
 int ERR_CNT11 ;
 int ERR_CNT12 ;
 int ERR_CNT20 ;
 int ERR_CNT21 ;
 int ERR_CNT22 ;
 int stv0900_get_bits (struct stv0900_internal*,int ) ;

__attribute__((used)) static u32 stv0900_get_err_count(struct stv0900_internal *intp, int cntr,
     enum fe_stv0900_demod_num demod)
{
 u32 lsb, msb, hsb, err_val;

 switch (cntr) {
 case 0:
 default:
  hsb = stv0900_get_bits(intp, ERR_CNT12);
  msb = stv0900_get_bits(intp, ERR_CNT11);
  lsb = stv0900_get_bits(intp, ERR_CNT10);
  break;
 case 1:
  hsb = stv0900_get_bits(intp, ERR_CNT22);
  msb = stv0900_get_bits(intp, ERR_CNT21);
  lsb = stv0900_get_bits(intp, ERR_CNT20);
  break;
 }

 err_val = (hsb << 16) + (msb << 8) + (lsb);

 return err_val;
}
