
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_regs {scalar_t__ pc; } ;
typedef enum exception_code { ____Placeholder_exception_code } exception_code ;


 int DIE_BREAKPOINT ;
 int DIE_GPF ;
 int die (char const*,struct pt_regs*,int) ;
 int fixup_exception (struct pt_regs*) ;
 scalar_t__ gdbstub_intercept (struct pt_regs*,int) ;
 scalar_t__ notify_die (int ,char const*,struct pt_regs*,int,int ,int ) ;
 int peripheral_leds_display_exception (int) ;
 scalar_t__ user_mode (struct pt_regs*) ;

int die_if_no_fixup(const char *str, struct pt_regs *regs,
      enum exception_code code)
{
 if (user_mode(regs))
  return 0;

 peripheral_leds_display_exception(code);

 switch (code) {

 case 133:
 case 137:
 case 136:
 case 139:
 case 132:
 case 131:
 case 140:
 case 135:
 case 134:
 case 129:
 case 130:
 case 138:
  if (fixup_exception(regs))
   return 1;
 case 128:
  if (regs->pc && *(uint8_t *)regs->pc == 0xff)
   if (notify_die(DIE_BREAKPOINT, str, regs, code, 0, 0))
    return 1;
  break;
 default:
  break;
 }







 if (notify_die(DIE_GPF, str, regs, code, 0, 0))
  return 1;


 die(str, regs, code);
}
