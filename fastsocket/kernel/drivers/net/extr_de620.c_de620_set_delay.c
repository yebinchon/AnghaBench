
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int COMMAND_PORT ;
 int CS0 ;
 int DATA_PORT ;
 int NIC_Cmd ;
 int READ_DELAY ;
 int WRITE_DELAY ;
 int W_DFR ;
 int de620_flip_ds (struct net_device*) ;
 int de620_ready (struct net_device*) ;
 int outb (int,int ) ;

__attribute__((used)) static inline void
de620_set_delay(struct net_device *dev)
{
 de620_ready(dev);
 outb(W_DFR, DATA_PORT);
 outb(NIC_Cmd ^ CS0, COMMAND_PORT);

 de620_ready(dev);



 outb(0, DATA_PORT);

 de620_flip_ds(dev);

 de620_ready(dev);



 outb(0, DATA_PORT);

 de620_flip_ds(dev);
}
