
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa5246a_device {int* is_searching; } ;


 int COMMAND_END ;
 int EINVAL ;
 int EIO ;
 unsigned char NUM_DAUS ;
 unsigned char R2_BANK_0 ;
 unsigned char R2_HAMMING_CHECK_OFF ;
 unsigned char R2_IN_R3_SELECT_PAGE_HUNDREDS ;
 int R3_HOLD_PAGE ;
 int R3_PAGE_HUNDREDS_0 ;
 int R3_PAGE_HUNDREDS_DO_NOT_CARE ;
 int SAA5246A_REGISTER_R2 ;
 scalar_t__ i2c_senddata (struct saa5246a_device*,int ,unsigned char,int,int ) ;

__attribute__((used)) static inline int saa5246a_stop_dau(struct saa5246a_device *t,
    unsigned char dau_no)
{
 if (dau_no >= NUM_DAUS)
  return -EINVAL;
 if (i2c_senddata(t, SAA5246A_REGISTER_R2,

  R2_IN_R3_SELECT_PAGE_HUNDREDS |
  dau_no << 4 |
  R2_BANK_0 |
  R2_HAMMING_CHECK_OFF,

  R3_PAGE_HUNDREDS_0 |
  R3_HOLD_PAGE |
  R3_PAGE_HUNDREDS_DO_NOT_CARE,

  COMMAND_END))
 {
  return -EIO;
 }
 t->is_searching[dau_no] = 0;
 return 0;
}
