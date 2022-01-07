
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char const EXTENDED_MESSAGE ;
 int printk (char*,unsigned char const,...) ;

int spi_print_msg(const unsigned char *msg)
{
 int len = 1, i;

 if (msg[0] == EXTENDED_MESSAGE) {
  len = 2 + msg[1];
  if (len == 2)
   len += 256;
  for (i = 0; i < len; ++i)
   printk("%02x ", msg[i]);

 } else if (msg[0] & 0x80) {
  printk("%02x ", msg[0]);

 } else if ((msg[0] < 0x1f) || (msg[0] == 0x55)) {
  printk("%02x ", msg[0]);

 } else if (msg[0] <= 0x2f) {
  printk("%02x %02x", msg[0], msg[1]);
  len = 2;
 } else
  printk("%02x ", msg[0]);
 return len;
}
