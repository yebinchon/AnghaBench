
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sig_status; } ;


 int BCSR_INT_SD1INSERT ;
 TYPE_1__* bcsr ;

__attribute__((used)) static int pb1200mmc1_card_inserted(void *mmc_host)
{
 return (bcsr->sig_status & BCSR_INT_SD1INSERT) ? 1 : 0;
}
