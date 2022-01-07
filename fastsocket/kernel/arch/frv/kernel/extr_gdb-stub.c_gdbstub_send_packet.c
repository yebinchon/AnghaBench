
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdbstub_proto (char*,...) ;
 int gdbstub_rx_char (unsigned char*,int ) ;
 unsigned char gdbstub_rx_unget ;
 int gdbstub_tx_char (char) ;
 char hex_asc_hi (unsigned char) ;
 char hex_asc_lo (unsigned char) ;

__attribute__((used)) static int gdbstub_send_packet(char *buffer)
{
 unsigned char checksum;
 int count;
 unsigned char ch;


 gdbstub_proto("### GDB Tx '%s' ###\n", buffer);

 do {
  gdbstub_tx_char('$');
  checksum = 0;
  count = 0;

  while ((ch = buffer[count]) != 0) {
   gdbstub_tx_char(ch);
   checksum += ch;
   count += 1;
  }

  gdbstub_tx_char('#');
  gdbstub_tx_char(hex_asc_hi(checksum));
  gdbstub_tx_char(hex_asc_lo(checksum));

 } while (gdbstub_rx_char(&ch,0),




   ch!='+' && ch!='$');

 if (ch=='+') {
  gdbstub_proto("### GDB Rx ACK\n");
  return 0;
 }

 gdbstub_proto("### GDB Tx Abandoned\n");
 gdbstub_rx_unget = ch;
 return 1;
}
