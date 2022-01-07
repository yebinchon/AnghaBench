
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int byte ;


 int COMMAND_PORT ;
 int DATA_PORT ;
 int DS0 ;
 int DS1 ;
 int NIC_Cmd ;
 int W_DUMMY ;
 int de620_put_byte (struct net_device*,int) ;
 int de620_send_command (struct net_device*,int ) ;
 int outb (int,int ) ;
 int printk (char*,int) ;
 int tot_cnt ;

__attribute__((used)) static inline void
de620_write_block(struct net_device *dev, byte *buffer, int count, int pad)
{

 byte uflip = NIC_Cmd ^ (DS0 | DS1);
 byte dflip = NIC_Cmd;
 for ( ; count > 0; count -=2) {
  outb(*buffer++, DATA_PORT);
  outb(uflip, COMMAND_PORT);
  outb(*buffer++, DATA_PORT);
  outb(dflip, COMMAND_PORT);
 }
 de620_send_command(dev,W_DUMMY);

}
