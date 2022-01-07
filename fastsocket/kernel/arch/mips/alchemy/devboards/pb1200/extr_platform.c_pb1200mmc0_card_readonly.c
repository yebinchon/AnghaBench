
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 int BCSR_STATUS_SD0WP ;
 TYPE_1__* bcsr ;

__attribute__((used)) static int pb1200mmc0_card_readonly(void *mmc_host)
{
 return (bcsr->status & BCSR_STATUS_SD0WP) ? 1 : 0;
}
