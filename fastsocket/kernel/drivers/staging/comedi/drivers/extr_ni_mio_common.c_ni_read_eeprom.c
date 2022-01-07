
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int PROMOUT ;
 int Serial_Command ;
 int XXX_Status ;
 int ni_readb (int ) ;
 int ni_writeb (int,int ) ;

__attribute__((used)) static int ni_read_eeprom(struct comedi_device *dev, int addr)
{
 int bit;
 int bitstring;

 bitstring = 0x0300 | ((addr & 0x100) << 3) | (addr & 0xff);
 ni_writeb(0x04, Serial_Command);
 for (bit = 0x8000; bit; bit >>= 1) {
  ni_writeb(0x04 | ((bit & bitstring) ? 0x02 : 0),
     Serial_Command);
  ni_writeb(0x05 | ((bit & bitstring) ? 0x02 : 0),
     Serial_Command);
 }
 bitstring = 0;
 for (bit = 0x80; bit; bit >>= 1) {
  ni_writeb(0x04, Serial_Command);
  ni_writeb(0x05, Serial_Command);
  bitstring |= ((ni_readb(XXX_Status) & PROMOUT) ? bit : 0);
 }
 ni_writeb(0x00, Serial_Command);

 return bitstring;
}
