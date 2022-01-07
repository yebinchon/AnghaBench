
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx_port {int dummy; } ;


 int func_enter2 () ;
 int func_exit () ;
 int hi_txipos ;
 int hi_txopos ;
 int sx_read_channel_byte (struct sx_port*,int ) ;

__attribute__((used)) static int sx_chars_in_buffer(void *ptr)
{
 struct sx_port *port = ptr;
 func_enter2();

 func_exit();
 return ((sx_read_channel_byte(port, hi_txipos) -
   sx_read_channel_byte(port, hi_txopos)) & 0xff);
}
