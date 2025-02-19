
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef scalar_t__ byte ;


 int COMMAND_PORT ;
 scalar_t__ CS0 ;
 int DATA_PORT ;
 scalar_t__ NIC_Cmd ;
 scalar_t__ W_DUMMY ;
 int de620_ready (struct net_device*) ;
 int outb (scalar_t__,int ) ;

__attribute__((used)) static inline void
de620_send_command(struct net_device *dev, byte cmd)
{
 de620_ready(dev);
 if (cmd == W_DUMMY)
  outb(NIC_Cmd, COMMAND_PORT);

 outb(cmd, DATA_PORT);

 outb(NIC_Cmd ^ CS0, COMMAND_PORT);
 de620_ready(dev);
 outb(NIC_Cmd, COMMAND_PORT);
}
