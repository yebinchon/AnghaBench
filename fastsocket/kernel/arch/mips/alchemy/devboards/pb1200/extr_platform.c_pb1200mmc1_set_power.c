
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int board; } ;


 int BCSR_BOARD_SD1PWR ;
 int au_sync_delay (int) ;
 TYPE_1__* bcsr ;

__attribute__((used)) static void pb1200mmc1_set_power(void *mmc_host, int state)
{
 if (state)
  bcsr->board |= BCSR_BOARD_SD1PWR;
 else
  bcsr->board &= ~BCSR_BOARD_SD1PWR;

 au_sync_delay(1);
}
