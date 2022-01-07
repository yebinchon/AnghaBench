
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct TYPE_4__ {TYPE_1__* brgc; } ;
struct TYPE_3__ {int l; } ;


 int BRG_UART_CLK ;
 int CPM_BRG_EN ;
 TYPE_2__* pquicc ;

void
m360_cpm_setbrg(uint brg, uint rate)
{
 volatile uint *bp;




 bp = (volatile uint *)(&pquicc->brgc[0].l);
 bp += brg;
 *bp = ((BRG_UART_CLK / rate - 1) << 1) | CPM_BRG_EN;
}
