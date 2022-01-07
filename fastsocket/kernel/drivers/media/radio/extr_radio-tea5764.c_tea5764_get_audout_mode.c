
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5764_regs {int tnctrl; } ;
struct tea5764_device {struct tea5764_regs regs; } ;


 int TEA5764_TNCTRL_MST ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;

__attribute__((used)) static int tea5764_get_audout_mode(struct tea5764_device *radio)
{
 struct tea5764_regs *r = &radio->regs;

 if (r->tnctrl & TEA5764_TNCTRL_MST)
  return V4L2_TUNER_MODE_MONO;
 else
  return V4L2_TUNER_MODE_STEREO;
}
