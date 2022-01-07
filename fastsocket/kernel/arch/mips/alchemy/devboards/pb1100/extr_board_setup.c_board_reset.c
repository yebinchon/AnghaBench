
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PB1100_RST_VDDI ;
 int au_writel (int,int ) ;

void board_reset(void)
{

 au_writel(0x00000000, PB1100_RST_VDDI);
}
