
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFMAX ;
 int EIO ;
 int gdbstub_proto (char*,...) ;
 int gdbstub_rx_char (unsigned char*,int ) ;
 int gdbstub_tx_char (char) ;
 unsigned char hex (unsigned char) ;

__attribute__((used)) static void gdbstub_recv_packet(char *buffer)
{
 unsigned char checksum;
 unsigned char xmitcsum;
 unsigned char ch;
 int count, i, ret, error;

 for (;;) {

  do {
   gdbstub_rx_char(&ch, 0);
  } while (ch != '$');

  checksum = 0;
  xmitcsum = -1;
  count = 0;
  error = 0;


  while (count < BUFMAX) {
   ret = gdbstub_rx_char(&ch, 0);
   if (ret < 0)
    error = ret;

   if (ch == '#')
    break;
   checksum += ch;
   buffer[count] = ch;
   count++;
  }

  if (error == -EIO) {
   gdbstub_proto("### GDB Rx Error - Skipping packet ###\n");
   gdbstub_proto("### GDB Tx NAK\n");
   gdbstub_tx_char('-');
   continue;
  }

  if (count >= BUFMAX || error)
   continue;

  buffer[count] = 0;


  ret = gdbstub_rx_char(&ch, 0);
  if (ret < 0)
   error = ret;
  xmitcsum = hex(ch) << 4;

  ret = gdbstub_rx_char(&ch, 0);
  if (ret < 0)
   error = ret;
  xmitcsum |= hex(ch);

  if (error) {
   if (error == -EIO)
    gdbstub_proto("### GDB Rx Error - Skipping packet\n");
   gdbstub_proto("### GDB Tx NAK\n");
   gdbstub_tx_char('-');
   continue;
  }


  if (checksum != xmitcsum) {
   gdbstub_proto("### GDB Tx NAK\n");
   gdbstub_tx_char('-');
   continue;
  }

  gdbstub_proto("### GDB Rx '$%s#%02x' ###\n", buffer, checksum);
  gdbstub_proto("### GDB Tx ACK\n");
  gdbstub_tx_char('+');


  if (buffer[2] == ':') {
   gdbstub_tx_char(buffer[0]);
   gdbstub_tx_char(buffer[1]);


   count = 0;
   while (buffer[count]) count++;
   for (i=3; i <= count; i++)
    buffer[i - 3] = buffer[i];
  }

  break;
 }
}
