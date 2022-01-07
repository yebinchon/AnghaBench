
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct z8530_channel {scalar_t__ rxdma_on; } ;


 int END_FR ;
 int ERR_RES ;
 int R1 ;
 int R6 ;
 int R7 ;
 int RES_H_IUS ;
 int read_zsreg (struct z8530_channel*,int ) ;
 int write_zsctrl (struct z8530_channel*,int ) ;
 int z8530_rx (struct z8530_channel*) ;
 int z8530_rx_done (struct z8530_channel*) ;

__attribute__((used)) static void z8530_dma_rx(struct z8530_channel *chan)
{
 if(chan->rxdma_on)
 {

  u8 status;

  read_zsreg(chan, R7);
  read_zsreg(chan, R6);

  status=read_zsreg(chan, R1);

  if(status&END_FR)
  {
   z8530_rx_done(chan);
  }
  write_zsctrl(chan, ERR_RES);
  write_zsctrl(chan, RES_H_IUS);
 }
 else
 {

  z8530_rx(chan);
 }
}
