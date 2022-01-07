
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int ide_drive_t ;


 int MEM_STCFG2 ;
 int MEM_STTIME2 ;
 int PIO0 ;
 int PIO1 ;
 int PIO2 ;
 int PIO3 ;
 int PIO4 ;
 int SBC_IDE_PIO0_TCSOE ;
 int SBC_IDE_PIO0_TOECS ;
 int SBC_IDE_PIO1_TCSOE ;
 int SBC_IDE_PIO1_TOECS ;
 int SBC_IDE_PIO2_TCSOE ;
 int SBC_IDE_PIO2_TOECS ;
 int SBC_IDE_PIO3_TCSOE ;
 int SBC_IDE_PIO3_TOECS ;
 int SBC_IDE_PIO4_TCSOE ;
 int SBC_IDE_PIO4_TOECS ;
 int SBC_IDE_TIMING (int ) ;
 int TCSOE_MASK ;
 int TOECS_MASK ;
 int TS_MASK ;
 int au_readl (int ) ;
 int au_writel (int,int ) ;

__attribute__((used)) static void au1xxx_set_pio_mode(ide_drive_t *drive, const u8 pio)
{
 int mem_sttime = 0, mem_stcfg = au_readl(MEM_STCFG2);


 switch(pio) {
 case 0:
  mem_sttime = SBC_IDE_TIMING(PIO0);


  mem_stcfg |= TS_MASK;
  mem_stcfg &= ~TCSOE_MASK;
  mem_stcfg &= ~TOECS_MASK;
  mem_stcfg |= SBC_IDE_PIO0_TCSOE | SBC_IDE_PIO0_TOECS;
  break;

 case 1:
  mem_sttime = SBC_IDE_TIMING(PIO1);


  mem_stcfg |= TS_MASK;
  mem_stcfg &= ~TCSOE_MASK;
  mem_stcfg &= ~TOECS_MASK;
  mem_stcfg |= SBC_IDE_PIO1_TCSOE | SBC_IDE_PIO1_TOECS;
  break;

 case 2:
  mem_sttime = SBC_IDE_TIMING(PIO2);


  mem_stcfg &= ~TS_MASK;
  mem_stcfg &= ~TCSOE_MASK;
  mem_stcfg &= ~TOECS_MASK;
  mem_stcfg |= SBC_IDE_PIO2_TCSOE | SBC_IDE_PIO2_TOECS;
  break;

 case 3:
  mem_sttime = SBC_IDE_TIMING(PIO3);


  mem_stcfg &= ~TS_MASK;
  mem_stcfg &= ~TCSOE_MASK;
  mem_stcfg &= ~TOECS_MASK;
  mem_stcfg |= SBC_IDE_PIO3_TCSOE | SBC_IDE_PIO3_TOECS;

  break;

 case 4:
  mem_sttime = SBC_IDE_TIMING(PIO4);


  mem_stcfg &= ~TS_MASK;
  mem_stcfg &= ~TCSOE_MASK;
  mem_stcfg &= ~TOECS_MASK;
  mem_stcfg |= SBC_IDE_PIO4_TCSOE | SBC_IDE_PIO4_TOECS;
  break;
 }

 au_writel(mem_sttime,MEM_STTIME2);
 au_writel(mem_stcfg,MEM_STCFG2);
}
