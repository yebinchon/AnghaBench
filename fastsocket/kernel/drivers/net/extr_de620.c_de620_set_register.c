
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int byte ;


 int COMMAND_PORT ;
 int CS0 ;
 int DATA_PORT ;
 int NIC_Cmd ;
 int de620_put_byte (struct net_device*,int) ;
 int de620_ready (struct net_device*) ;
 int outb (int,int ) ;

__attribute__((used)) static inline void
de620_set_register(struct net_device *dev, byte reg, byte value)
{
 de620_ready(dev);
 outb(reg, DATA_PORT);
 outb(NIC_Cmd ^ CS0, COMMAND_PORT);

 de620_put_byte(dev, value);
}
