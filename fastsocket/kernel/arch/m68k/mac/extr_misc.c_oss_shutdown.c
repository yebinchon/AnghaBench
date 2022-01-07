
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rom_ctrl; } ;


 int OSS_POWEROFF ;
 TYPE_1__* oss ;

__attribute__((used)) static void oss_shutdown(void)
{
 oss->rom_ctrl = OSS_POWEROFF;
}
