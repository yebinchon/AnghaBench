
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct w6692_hw {int fmask; int name; } ;
struct TYPE_2__ {int state; int Flags; int nr; struct w6692_hw* hw; } ;
struct w6692_ch {int b_mode; TYPE_1__ bch; } ;


 int ENOPROTOOPT ;
 int FLG_HDLC ;
 int FLG_TRANSPARENT ;



 int W_B_ADM1 ;
 int W_B_ADM2 ;
 int W_B_CMDR ;
 int W_B_CMDR_RACT ;
 int W_B_CMDR_RRST ;
 int W_B_CMDR_XRST ;
 int W_B_EXIM ;
 int W_B_MODE ;
 int W_B_MODE_EPCM ;
 int W_B_MODE_ITF ;
 int W_B_MODE_MMS ;
 int WriteW6692B (struct w6692_ch*,int ,int) ;
 int disable_pots (struct w6692_ch*) ;
 int mISDN_clear_bchannel (TYPE_1__*) ;
 int pots ;
 int pr_debug (char*,int ,int ,int ,int ) ;
 int pr_info (char*,int ,int ) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int
w6692_mode(struct w6692_ch *wch, u32 pr)
{
 struct w6692_hw *card;

 card = wch->bch.hw;
 pr_debug("%s: B%d protocol %x-->%x\n", card->name,
  wch->bch.nr, wch->bch.state, pr);
 switch (pr) {
 case 128:
  if ((card->fmask & pots) && (wch->b_mode & W_B_MODE_EPCM))
   disable_pots(wch);
  wch->b_mode = 0;
  mISDN_clear_bchannel(&wch->bch);
  WriteW6692B(wch, W_B_MODE, wch->b_mode);
  WriteW6692B(wch, W_B_CMDR, W_B_CMDR_RRST | W_B_CMDR_XRST);
  test_and_clear_bit(FLG_HDLC, &wch->bch.Flags);
  test_and_clear_bit(FLG_TRANSPARENT, &wch->bch.Flags);
  break;
 case 129:
  wch->b_mode = W_B_MODE_MMS;
  WriteW6692B(wch, W_B_MODE, wch->b_mode);
  WriteW6692B(wch, W_B_EXIM, 0);
  WriteW6692B(wch, W_B_CMDR, W_B_CMDR_RRST | W_B_CMDR_RACT |
   W_B_CMDR_XRST);
  test_and_set_bit(FLG_TRANSPARENT, &wch->bch.Flags);
  break;
 case 130:
  wch->b_mode = W_B_MODE_ITF;
  WriteW6692B(wch, W_B_MODE, wch->b_mode);
  WriteW6692B(wch, W_B_ADM1, 0xff);
  WriteW6692B(wch, W_B_ADM2, 0xff);
  WriteW6692B(wch, W_B_EXIM, 0);
  WriteW6692B(wch, W_B_CMDR, W_B_CMDR_RRST | W_B_CMDR_RACT |
   W_B_CMDR_XRST);
  test_and_set_bit(FLG_HDLC, &wch->bch.Flags);
  break;
 default:
  pr_info("%s: protocol %x not known\n", card->name, pr);
  return -ENOPROTOOPT;
 }
 wch->bch.state = pr;
 return 0;
}
