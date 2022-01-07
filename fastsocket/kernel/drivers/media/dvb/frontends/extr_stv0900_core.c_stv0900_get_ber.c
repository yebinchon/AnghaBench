
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv0900_internal {int dummy; } ;
typedef int s32 ;
typedef enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;


 int HEADER_MODE ;
 int PKTDELIN_LOCK ;
 int PRFVIT ;




 int msleep (int) ;
 int stv0900_get_bits (struct stv0900_internal*,int ) ;
 int stv0900_get_err_count (struct stv0900_internal*,int ,int) ;

__attribute__((used)) static u32 stv0900_get_ber(struct stv0900_internal *intp,
    enum fe_stv0900_demod_num demod)
{
 u32 ber = 10000000, i;
 s32 demod_state;

 demod_state = stv0900_get_bits(intp, HEADER_MODE);

 switch (demod_state) {
 case 128:
 case 129:
 default:
  ber = 10000000;
  break;
 case 130:
  ber = 0;
  for (i = 0; i < 5; i++) {
   msleep(5);
   ber += stv0900_get_err_count(intp, 0, demod);
  }

  ber /= 5;
  if (stv0900_get_bits(intp, PRFVIT)) {
   ber *= 9766;
   ber = ber >> 13;
  }

  break;
 case 131:
  ber = 0;
  for (i = 0; i < 5; i++) {
   msleep(5);
   ber += stv0900_get_err_count(intp, 0, demod);
  }

  ber /= 5;
  if (stv0900_get_bits(intp, PKTDELIN_LOCK)) {
   ber *= 9766;
   ber = ber >> 13;
  }

  break;
 }

 return ber;
}
