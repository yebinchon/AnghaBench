
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_short ;
typedef int u_char ;
struct TYPE_2__ {unsigned int ioaddr; int psock; } ;


 int I365_REG (int ,size_t) ;
 int bus_lock ;
 int outb (int ,unsigned int) ;
 TYPE_1__* socket ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void i365_set(u_short sock, u_short reg, u_char data)
{
    unsigned long flags;
    spin_lock_irqsave(&bus_lock,flags);
    {
 unsigned int port = socket[sock].ioaddr;
 u_char val = I365_REG(socket[sock].psock, reg);
 outb(val, port); outb(data, port+1);
 spin_unlock_irqrestore(&bus_lock,flags);
    }
}
