
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {scalar_t__ subtyp; int (* writeW6692 ) (struct IsdnCardState*,int ,int) ;} ;


 scalar_t__ W6692_USR ;
 int W_D_CTL ;
 int W_D_CTL_SRST ;
 int W_D_EXIM ;
 int W_D_MODE ;
 int W_D_MODE_RACT ;
 int W_D_SAM ;
 int W_D_TAM ;
 int W_IMASK ;
 int W_PCTL ;
 int W_XDATA ;
 int mdelay (int) ;
 int stub1 (struct IsdnCardState*,int ,int) ;
 int stub10 (struct IsdnCardState*,int ,int) ;
 int stub2 (struct IsdnCardState*,int ,int) ;
 int stub3 (struct IsdnCardState*,int ,int) ;
 int stub4 (struct IsdnCardState*,int ,int) ;
 int stub5 (struct IsdnCardState*,int ,int) ;
 int stub6 (struct IsdnCardState*,int ,int) ;
 int stub7 (struct IsdnCardState*,int ,int) ;
 int stub8 (struct IsdnCardState*,int ,int) ;
 int stub9 (struct IsdnCardState*,int ,int) ;

__attribute__((used)) static void resetW6692(struct IsdnCardState *cs)
{
 cs->writeW6692(cs, W_D_CTL, W_D_CTL_SRST);
 mdelay(10);
 cs->writeW6692(cs, W_D_CTL, 0x00);
 mdelay(10);
 cs->writeW6692(cs, W_IMASK, 0xff);
 cs->writeW6692(cs, W_D_SAM, 0xff);
 cs->writeW6692(cs, W_D_TAM, 0xff);
 cs->writeW6692(cs, W_D_EXIM, 0x00);
 cs->writeW6692(cs, W_D_MODE, W_D_MODE_RACT);
 cs->writeW6692(cs, W_IMASK, 0x18);
 if (cs->subtyp == W6692_USR) {




  cs->writeW6692(cs, W_PCTL, 0x80);
  cs->writeW6692(cs, W_XDATA, 0x00);
 }
}
