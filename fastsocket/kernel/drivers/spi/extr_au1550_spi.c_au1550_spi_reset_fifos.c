
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct au1550_spi {TYPE_1__* regs; } ;
struct TYPE_2__ {int psc_spipcr; } ;


 int PSC_SPIPCR_RC ;
 int PSC_SPIPCR_TC ;
 int au_sync () ;

__attribute__((used)) static void au1550_spi_reset_fifos(struct au1550_spi *hw)
{
 u32 pcr;

 hw->regs->psc_spipcr = PSC_SPIPCR_RC | PSC_SPIPCR_TC;
 au_sync();
 do {
  pcr = hw->regs->psc_spipcr;
  au_sync();
 } while (pcr != 0);
}
