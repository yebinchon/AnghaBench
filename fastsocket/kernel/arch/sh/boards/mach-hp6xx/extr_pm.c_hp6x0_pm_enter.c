
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int suspend_state_t ;


 int DACR ;
 int HD64461_PCC1CSCIER ;
 int HD64461_PCC1CSCR ;
 int HD64461_PCC1SCR ;
 int HD64461_PCCSCR_VCC1 ;
 int HD64461_SCPUCR ;
 int HD64461_STBCR ;
 int HD64461_STBCR_SPC1ST ;
 int STBCR ;
 int STBCR2 ;
 int ctrl_inb (int ) ;
 int ctrl_outb (int,int ) ;
 int inb (int ) ;
 int inw (int ) ;
 int outb (int,int ) ;
 int outw (int,int ) ;
 int pm_enter () ;

__attribute__((used)) static int hp6x0_pm_enter(suspend_state_t state)
{
 u8 stbcr, stbcr2;
 ctrl_outb(0x1f, DACR);

 stbcr = ctrl_inb(STBCR);
 ctrl_outb(0x01, STBCR);

 stbcr2 = ctrl_inb(STBCR2);
 ctrl_outb(0x7f , STBCR2);

 outw(0xf07f, HD64461_SCPUCR);

 pm_enter();

 outw(0, HD64461_SCPUCR);
 ctrl_outb(stbcr, STBCR);
 ctrl_outb(stbcr2, STBCR2);
 return 0;
}
