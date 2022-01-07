
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int swreset; } ;


 TYPE_1__* bcsr ;

void board_reset(void)
{

 bcsr->swreset = 0x0000;
}
