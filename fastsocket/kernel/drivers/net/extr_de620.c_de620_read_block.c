
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int byte ;


 int COMMAND_PORT ;
 int DS0 ;
 int DS1 ;
 int NIC_Cmd ;
 int STATUS_PORT ;
 int de620_flip_ds (struct net_device*) ;
 int de620_read_byte (struct net_device*) ;
 int inb (int ) ;
 int outb (int,int ) ;
 int printk (char*,int) ;
 int tot_cnt ;

__attribute__((used)) static inline void
de620_read_block(struct net_device *dev, byte *data, int count)
{

 byte value;
 byte uflip = NIC_Cmd ^ (DS0 | DS1);
 byte dflip = NIC_Cmd;
 while (count-- > 0) {
  value = inb(STATUS_PORT) & 0xf0;
  outb(uflip, COMMAND_PORT);
  *data++ = value | inb(STATUS_PORT) >> 4;
  outb(dflip , COMMAND_PORT);
 }

}
