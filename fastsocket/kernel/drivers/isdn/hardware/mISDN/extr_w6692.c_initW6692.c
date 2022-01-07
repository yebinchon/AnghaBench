
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u8 ;
struct TYPE_4__ {scalar_t__ data; void* function; } ;
struct TYPE_3__ {TYPE_2__ timer; } ;
struct w6692_hw {int imask; scalar_t__ subtype; int pctl; int xdata; int xaddr; int fmask; int name; int * bc; int state; TYPE_1__ dch; } ;


 int DEBUG_HW ;
 int ISDN_P_NONE ;
 int ReadW6692 (struct w6692_hw*,int ) ;
 scalar_t__ W6692_USR ;
 int W_B_CMDR ;
 int W_B_CMDR_RRST ;
 int W_B_CMDR_XRST ;
 int W_B_EXIM ;
 int W_D_CMDR ;
 int W_D_CMDR_RRST ;
 int W_D_CMDR_XRST ;
 int W_D_CTL ;
 int W_D_EXIM ;
 int W_D_MODE ;
 int W_D_MODE_RACT ;
 int W_D_SAM ;
 int W_D_TAM ;
 int W_L1CMD_ECK ;
 int W_L1CMD_RST ;
 int W_PCTL ;
 int W_PCTL_OE0 ;
 int W_PCTL_OE1 ;
 int W_PCTL_OE2 ;
 int W_PCTL_OE4 ;
 int W_PCTL_OE5 ;
 int W_XADDR ;
 int W_XDATA ;
 int WriteW6692 (struct w6692_hw*,int ,int) ;
 int WriteW6692B (int *,int ,int) ;
 scalar_t__ dbusy_timer_handler ;
 int debug ;
 int disable_hwirq (struct w6692_hw*) ;
 int init_timer (TYPE_2__*) ;
 int led ;
 int ph_command (struct w6692_hw*,int ) ;
 int pots ;
 int pr_notice (char*,int ,int ) ;
 int w6692_mode (int *,int ) ;

void initW6692(struct w6692_hw *card)
{
 u8 val;

 card->dch.timer.function = (void *)dbusy_timer_handler;
 card->dch.timer.data = (u_long)&card->dch;
 init_timer(&card->dch.timer);
 w6692_mode(&card->bc[0], ISDN_P_NONE);
 w6692_mode(&card->bc[1], ISDN_P_NONE);
 WriteW6692(card, W_D_CTL, 0x00);
 disable_hwirq(card);
 WriteW6692(card, W_D_SAM, 0xff);
 WriteW6692(card, W_D_TAM, 0xff);
 WriteW6692(card, W_D_MODE, W_D_MODE_RACT);
 card->state = W_L1CMD_RST;
 ph_command(card, W_L1CMD_RST);
 ph_command(card, W_L1CMD_ECK);

 card->imask = 0x18;
 WriteW6692(card, W_D_EXIM, 0x00);
 WriteW6692B(&card->bc[0], W_B_EXIM, 0);
 WriteW6692B(&card->bc[1], W_B_EXIM, 0);

 WriteW6692(card, W_D_CMDR, W_D_CMDR_RRST | W_D_CMDR_XRST);

 WriteW6692B(&card->bc[0], W_B_CMDR, W_B_CMDR_RRST | W_B_CMDR_XRST);
 WriteW6692B(&card->bc[1], W_B_CMDR, W_B_CMDR_RRST | W_B_CMDR_XRST);

 if (card->subtype == W6692_USR) {




  card->pctl = 0x80;
  card->xdata = 0;
  WriteW6692(card, W_PCTL, card->pctl);
  WriteW6692(card, W_XDATA, card->xdata);
 } else {
  card->pctl = W_PCTL_OE5 | W_PCTL_OE4 | W_PCTL_OE2 |
   W_PCTL_OE1 | W_PCTL_OE0;
  card->xaddr = 0x00;
  if (card->fmask & pots)
   card->xdata |= 0x06;
  if (card->fmask & led)
   card->xdata |= 0x04;
  if ((card->fmask & pots) || (card->fmask & led)) {
   WriteW6692(card, W_PCTL, card->pctl);
   WriteW6692(card, W_XADDR, card->xaddr);
   WriteW6692(card, W_XDATA, card->xdata);
   val = ReadW6692(card, W_XADDR);
   if (debug & DEBUG_HW)
    pr_notice("%s: W_XADDR=%02x\n",
     card->name, val);
  }
 }
}
