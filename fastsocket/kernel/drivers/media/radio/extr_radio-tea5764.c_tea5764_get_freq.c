
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5764_regs {int tnctrl; int frqchk; } ;
struct tea5764_device {struct tea5764_regs regs; } ;


 int TEA5764_TNCTRL_HLSI ;

__attribute__((used)) static int tea5764_get_freq(struct tea5764_device *radio)
{
 struct tea5764_regs *r = &radio->regs;

 if (r->tnctrl & TEA5764_TNCTRL_HLSI)
  return (r->frqchk * 8192) - 225000;
 else
  return (r->frqchk * 8192) + 225000;
}
