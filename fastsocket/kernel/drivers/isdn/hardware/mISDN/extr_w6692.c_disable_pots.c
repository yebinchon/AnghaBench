
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w6692_hw {int fmask; } ;
struct TYPE_2__ {struct w6692_hw* hw; } ;
struct w6692_ch {int b_mode; TYPE_1__ bch; } ;


 int ENODEV ;
 int W_B_CMDR ;
 int W_B_CMDR_RACT ;
 int W_B_CMDR_RRST ;
 int W_B_CMDR_XRST ;
 int W_B_MODE ;
 int W_B_MODE_BSW0 ;
 int W_B_MODE_EPCM ;
 int WriteW6692B (struct w6692_ch*,int ,int) ;
 int pots ;

__attribute__((used)) static int
disable_pots(struct w6692_ch *wch)
{
 struct w6692_hw *card = wch->bch.hw;

 if (!(card->fmask & pots))
  return -ENODEV;
 wch->b_mode &= ~(W_B_MODE_EPCM | W_B_MODE_BSW0);
 WriteW6692B(wch, W_B_MODE, wch->b_mode);
 WriteW6692B(wch, W_B_CMDR, W_B_CMDR_RRST | W_B_CMDR_RACT |
  W_B_CMDR_XRST);
 return 0;
}
