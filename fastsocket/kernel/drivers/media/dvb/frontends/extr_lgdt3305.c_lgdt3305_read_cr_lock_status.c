
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgdt3305_state {int current_modulation; } ;


 int EINVAL ;
 int LGDT3305_CR_LOCK_STATUS ;



 int lg_dbg (char*,int,char*) ;
 scalar_t__ lg_fail (int) ;
 int lgdt3305_read_reg (struct lgdt3305_state*,int ,int*) ;

__attribute__((used)) static int lgdt3305_read_cr_lock_status(struct lgdt3305_state *state,
     int *locked)
{
 u8 val;
 int ret;
 char *cr_lock_state = "";

 *locked = 0;

 ret = lgdt3305_read_reg(state, LGDT3305_CR_LOCK_STATUS, &val);
 if (lg_fail(ret))
  goto fail;

 switch (state->current_modulation) {
 case 130:
 case 129:
  if (val & (1 << 1))
   *locked = 1;

  switch (val & 0x07) {
  case 0:
   cr_lock_state = "QAM UNLOCK";
   break;
  case 4:
   cr_lock_state = "QAM 1stLock";
   break;
  case 6:
   cr_lock_state = "QAM 2ndLock";
   break;
  case 7:
   cr_lock_state = "QAM FinalLock";
   break;
  default:
   cr_lock_state = "CLOCKQAM-INVALID!";
   break;
  }
  break;
 case 128:
  if (val & (1 << 7)) {
   *locked = 1;
   cr_lock_state = "CLOCKVSB";
  }
  break;
 default:
  ret = -EINVAL;
 }
 lg_dbg("(%d) %s\n", *locked, cr_lock_state);
fail:
 return ret;
}
