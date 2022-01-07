
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ system; scalar_t__ resets; } ;


 TYPE_1__* bcsr ;

void board_reset(void)
{
 bcsr->resets = 0;
 bcsr->system = 0;
}
