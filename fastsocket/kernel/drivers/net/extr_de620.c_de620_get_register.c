
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int byte ;


 int W_DUMMY ;
 int de620_read_byte (struct net_device*) ;
 int de620_send_command (struct net_device*,int ) ;

__attribute__((used)) static inline byte
de620_get_register(struct net_device *dev, byte reg)
{
 byte value;

 de620_send_command(dev,reg);
 value = de620_read_byte(dev);
 de620_send_command(dev,W_DUMMY);

 return value;
}
