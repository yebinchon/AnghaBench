
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm_regs {int ebx; int eax; } ;


 int I8K_FAN_MAX ;
 int I8K_SMM_SET_FAN ;
 int i8k_get_fan_status (int) ;
 scalar_t__ i8k_smm (struct smm_regs*) ;

__attribute__((used)) static int i8k_set_fan(int fan, int speed)
{
 struct smm_regs regs = { .eax = I8K_SMM_SET_FAN, };

 speed = (speed < 0) ? 0 : ((speed > I8K_FAN_MAX) ? I8K_FAN_MAX : speed);
 regs.ebx = (fan & 0xff) | (speed << 8);

 return i8k_smm(&regs) ? : i8k_get_fan_status(fan);
}
