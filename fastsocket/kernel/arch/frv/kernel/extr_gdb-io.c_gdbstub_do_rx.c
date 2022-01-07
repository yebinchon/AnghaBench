
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSR ;
 int RX ;
 int UART_LSR_DR ;
 int __UART (int ) ;
 int __clr_IRL () ;
 int __clr_RC (int) ;
 int* gdbstub_rx_buffer ;
 unsigned int gdbstub_rx_inp ;
 unsigned int gdbstub_rx_outp ;

void gdbstub_do_rx(void)
{
 unsigned ix, nix;

 ix = gdbstub_rx_inp;

 while (__UART(LSR) & UART_LSR_DR) {
  nix = (ix + 2) & 0xfff;
  if (nix == gdbstub_rx_outp)
   break;

  gdbstub_rx_buffer[ix++] = __UART(LSR);
  gdbstub_rx_buffer[ix++] = __UART(RX);
  ix = nix;
 }

 gdbstub_rx_inp = ix;

 __clr_RC(15);
 __clr_IRL();

}
