
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCSR_SYSTEM_RESET ;
 int au_readw (int) ;
 int au_writew (int,int) ;

void board_reset(void)
{

 au_writew(au_readw(0xAF00001C) & ~BCSR_SYSTEM_RESET, 0xAF00001C);
}
