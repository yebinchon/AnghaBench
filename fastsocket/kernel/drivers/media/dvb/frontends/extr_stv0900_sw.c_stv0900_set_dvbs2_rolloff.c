
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0900_internal {int chip_id; } ;
typedef int s32 ;
typedef enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;


 int MANUALS2_ROLLOFF ;
 int MANUALSX_ROLLOFF ;
 int MATSTR1 ;
 int ROLLOFF_CONTROL ;
 int stv0900_read_reg (struct stv0900_internal*,int ) ;
 int stv0900_write_bits (struct stv0900_internal*,int ,int) ;

__attribute__((used)) static void stv0900_set_dvbs2_rolloff(struct stv0900_internal *intp,
     enum fe_stv0900_demod_num demod)
{
 s32 rolloff;

 if (intp->chip_id == 0x10) {
  stv0900_write_bits(intp, MANUALSX_ROLLOFF, 1);
  rolloff = stv0900_read_reg(intp, MATSTR1) & 0x03;
  stv0900_write_bits(intp, ROLLOFF_CONTROL, rolloff);
 } else if (intp->chip_id <= 0x20)
  stv0900_write_bits(intp, MANUALSX_ROLLOFF, 0);
 else
  stv0900_write_bits(intp, MANUALS2_ROLLOFF, 0);
}
