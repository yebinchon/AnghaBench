
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct lm8323_pwm {int id; int chip; } ;


 int LM8323_CMD_PWM_WRITE ;
 int lm8323_write (int ,int,int ,int,int,int) ;

__attribute__((used)) static void lm8323_write_pwm_one(struct lm8323_pwm *pwm, int pos, u16 cmd)
{
 lm8323_write(pwm->chip, 4, LM8323_CMD_PWM_WRITE, (pos << 2) | pwm->id,
       (cmd & 0xff00) >> 8, cmd & 0x00ff);
}
