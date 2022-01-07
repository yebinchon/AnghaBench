
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__** port_array; scalar_t__ statctrl_base; } ;
struct TYPE_4__ {unsigned char ctrlreg_value; } ;
typedef TYPE_2__ SLMP_INFO ;



__attribute__((used)) static void write_control_reg(SLMP_INFO * info)
{
 unsigned char *RegAddr = (unsigned char *)info->statctrl_base;
 *RegAddr = info->port_array[0]->ctrlreg_value;
}
