
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int ide_drive_t ;


 int MDMA0 ;
 int MDMA1 ;
 int MDMA2 ;
 int MEM_STCFG2 ;
 int MEM_STTIME2 ;
 int SBC_IDE_MDMA0_TCSOE ;
 int SBC_IDE_MDMA0_TOECS ;
 int SBC_IDE_MDMA1_TCSOE ;
 int SBC_IDE_MDMA1_TOECS ;
 int SBC_IDE_MDMA2_TCSOE ;
 int SBC_IDE_MDMA2_TOECS ;
 int SBC_IDE_TIMING (int ) ;
 int TCSOE_MASK ;
 int TOECS_MASK ;
 int TS_MASK ;



 int au_readl (int ) ;
 int au_writel (int,int ) ;

__attribute__((used)) static void auide_set_dma_mode(ide_drive_t *drive, const u8 speed)
{
 int mem_sttime = 0, mem_stcfg = au_readl(MEM_STCFG2);

 switch(speed) {
 }

 au_writel(mem_sttime,MEM_STTIME2);
 au_writel(mem_stcfg,MEM_STCFG2);
}
