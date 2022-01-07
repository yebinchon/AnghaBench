
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct au1550_spi {TYPE_1__* pdata; } ;
struct TYPE_2__ {int mainclk_hz; } ;


 int PSC_SPICFG_SET_BAUD (int) ;
 int PSC_SPICFG_SET_DIV (int) ;

__attribute__((used)) static u32 au1550_spi_baudcfg(struct au1550_spi *hw, unsigned speed_hz)
{
 u32 mainclk_hz = hw->pdata->mainclk_hz;
 u32 div, brg;

 for (div = 0; div < 4; div++) {
  brg = mainclk_hz / speed_hz / (4 << div);

  if (brg < (4 + 1)) {
   brg = (4 + 1);
   break;
  }
  if (brg <= (63 + 1))
   break;
 }
 if (div == 4) {
  div = 3;
  brg = (63 + 1);
 }
 brg--;
 return PSC_SPICFG_SET_BAUD(brg) | PSC_SPICFG_SET_DIV(div);
}
