
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Configuration2 ;
 int FIFO_Size ;
 scalar_t__ IO_Control ;
 scalar_t__ LSB_ID_Code ;
 scalar_t__ MSB_ID_Code ;
 int chip ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int printk (char*,int,int) ;
 int tmc1800 ;
 int tmc18c30 ;
 int tmc18c50 ;

__attribute__((used)) static int fdomain_is_valid_port( int port )
{
   if (inb( port + LSB_ID_Code ) != 0xe9) {
      if (inb( port + LSB_ID_Code ) != 0x27) return 0;
      if (inb( port + MSB_ID_Code ) != 0x61) return 0;
      chip = tmc1800;
   } else {
      if (inb( port + MSB_ID_Code ) != 0x60) return 0;
      chip = tmc18c50;






      outb( 0x80, port + IO_Control );
      if ((inb( port + Configuration2 ) & 0x80) == 0x80) {
  outb( 0x00, port + IO_Control );
  if ((inb( port + Configuration2 ) & 0x80) == 0x00) {
     chip = tmc18c30;
     FIFO_Size = 0x800;
  }
      }

   }

   return 1;
}
