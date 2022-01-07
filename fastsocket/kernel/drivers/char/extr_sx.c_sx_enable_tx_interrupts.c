
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct sx_port {TYPE_2__ gs; } ;


 int GS_TX_INTEN ;
 int LOW_WATER ;
 int func_enter2 () ;
 int func_exit () ;
 int hi_txipos ;
 int hi_txopos ;
 int sx_read_channel_byte (struct sx_port*,int ) ;
 int sx_transmit_chars (struct sx_port*) ;

__attribute__((used)) static void sx_enable_tx_interrupts(void *ptr)
{
 struct sx_port *port = ptr;
 int data_in_buffer;
 func_enter2();


 sx_transmit_chars(port);



 data_in_buffer = (sx_read_channel_byte(port, hi_txipos) -
     sx_read_channel_byte(port, hi_txopos)) & 0xff;


 if (data_in_buffer < LOW_WATER)
  port->gs.port.flags &= ~GS_TX_INTEN;

 func_exit();
}
