
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5764_regs {int tnctrl; int testreg; } ;
struct tea5764_device {struct tea5764_regs regs; } ;


 int TEA5764_TESTREG_TRIGFR ;
 int TEA5764_TNCTRL_AFM ;
 int TEA5764_TNCTRL_HLSI ;
 int TEA5764_TNCTRL_MU ;
 int TEA5764_TNCTRL_PUPD0 ;
 int tea5764_i2c_write (struct tea5764_device*) ;
 int use_xtal ;

__attribute__((used)) static void tea5764_power_up(struct tea5764_device *radio)
{
 struct tea5764_regs *r = &radio->regs;

 if (!(r->tnctrl & TEA5764_TNCTRL_PUPD0)) {
  r->tnctrl &= ~(TEA5764_TNCTRL_AFM | TEA5764_TNCTRL_MU |
          TEA5764_TNCTRL_HLSI);
  if (!use_xtal)
   r->testreg |= TEA5764_TESTREG_TRIGFR;
  else
   r->testreg &= ~TEA5764_TESTREG_TRIGFR;

  r->tnctrl |= TEA5764_TNCTRL_PUPD0;
  tea5764_i2c_write(radio);
 }
}
