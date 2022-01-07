
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5764_regs {int tnctrl; int frqset; } ;
struct tea5764_device {struct tea5764_regs regs; } ;


 int TEA5764_TNCTRL_HLSI ;

__attribute__((used)) static void tea5764_set_freq(struct tea5764_device *radio, int freq)
{
 struct tea5764_regs *r = &radio->regs;


 if (r->tnctrl & TEA5764_TNCTRL_HLSI)
  r->frqset = (freq + 225000) / 8192;
 else
  r->frqset = (freq - 225000) / 8192;
}
