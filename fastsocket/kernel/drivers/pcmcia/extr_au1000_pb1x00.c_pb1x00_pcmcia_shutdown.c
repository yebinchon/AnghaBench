
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int PB1000_PCR ;
 int PCMCIA_BOARD_REG ;
 int PCR_SLOT_0_RST ;
 int PCR_SLOT_1_RST ;
 int PC_DEASSERT_RST ;
 int PC_DRV_EN ;
 int SET_VCC_VPP (int ,int ,int) ;
 int VCC_HIZ ;
 int VPP_HIZ ;
 int au_readw (int ) ;
 int au_sync_delay (int) ;
 int au_writel (int,int ) ;
 int au_writew (int,int ) ;

__attribute__((used)) static int pb1x00_pcmcia_shutdown(void)
{
 u16 pcr;
 pcr = au_readw(PCMCIA_BOARD_REG) & ~0xf;
 pcr &= ~(PC_DEASSERT_RST | PC_DRV_EN);
 au_writew(pcr, PCMCIA_BOARD_REG);
 au_sync_delay(2);
 return 0;

}
