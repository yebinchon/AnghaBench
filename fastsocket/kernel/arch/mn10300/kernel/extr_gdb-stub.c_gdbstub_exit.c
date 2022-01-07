
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdbstub_busy ;
 int gdbstub_io_tx_char (char) ;
 int gdbstub_io_tx_flush () ;
 char hex_asc_hi (unsigned char) ;
 char hex_asc_lo (unsigned char) ;
 unsigned char* output_buffer ;

void gdbstub_exit(int status)
{
 unsigned char checksum;
 unsigned char ch;
 int count;

 gdbstub_busy = 1;
 output_buffer[0] = 'W';
 output_buffer[1] = hex_asc_hi(status);
 output_buffer[2] = hex_asc_lo(status);
 output_buffer[3] = 0;

 gdbstub_io_tx_char('$');
 checksum = 0;
 count = 0;

 while ((ch = output_buffer[count]) != 0) {
  gdbstub_io_tx_char(ch);
  checksum += ch;
  count += 1;
 }

 gdbstub_io_tx_char('#');
 gdbstub_io_tx_char(hex_asc_hi(checksum));
 gdbstub_io_tx_char(hex_asc_lo(checksum));


 gdbstub_io_tx_flush();

 gdbstub_busy = 0;
}
