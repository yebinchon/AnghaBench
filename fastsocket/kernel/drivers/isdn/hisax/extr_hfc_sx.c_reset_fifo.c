
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int cirm; scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__ hfcsx; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int HFCSX_CIRM ;
 int bytein (scalar_t__) ;
 int byteout (scalar_t__,int) ;
 int fifo_select (struct IsdnCardState*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void
reset_fifo(struct IsdnCardState *cs, u_char fifo)
{
 fifo_select(cs, fifo);
 byteout(cs->hw.hfcsx.base+1, HFCSX_CIRM);
 byteout(cs->hw.hfcsx.base, cs->hw.hfcsx.cirm | 0x80);
 udelay(1);
 while (bytein(cs->hw.hfcsx.base+1) & 1);
}
