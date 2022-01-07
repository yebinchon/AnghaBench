
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tnctrl; } ;
struct tea5764_device {TYPE_1__ regs; } ;


 int TEA5764_TNCTRL_MU ;

__attribute__((used)) static int tea5764_is_muted(struct tea5764_device *radio)
{
 return radio->regs.tnctrl & TEA5764_TNCTRL_MU;
}
