
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ chk_off; } ;
struct TYPE_4__ {TYPE_1__ cmd; int fanreg; } ;


 int ACERHDF_FAN_AUTO ;
 int ACERHDF_FAN_OFF ;
 int EINVAL ;
 TYPE_2__* bios_cfg ;
 scalar_t__ ec_read (int ,scalar_t__*) ;

__attribute__((used)) static int acerhdf_get_fanstate(int *state)
{
 u8 fan;

 if (ec_read(bios_cfg->fanreg, &fan))
  return -EINVAL;

 if (fan != bios_cfg->cmd.chk_off)
  *state = ACERHDF_FAN_AUTO;
 else
  *state = ACERHDF_FAN_OFF;

 return 0;
}
