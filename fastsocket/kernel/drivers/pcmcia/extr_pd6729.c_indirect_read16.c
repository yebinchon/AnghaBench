
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd6729_socket {int number; unsigned long io_base; } ;


 int inb (unsigned long) ;
 int outb (unsigned short,unsigned long) ;
 int port_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned short indirect_read16(struct pd6729_socket *socket,
          unsigned short reg)
{
 unsigned long port;
 unsigned short tmp;
 unsigned long flags;

 spin_lock_irqsave(&port_lock, flags);
 reg = reg + socket->number * 0x40;
 port = socket->io_base;
 outb(reg, port);
 tmp = inb(port + 1);
 reg++;
 outb(reg, port);
 tmp = tmp | (inb(port + 1) << 8);
 spin_unlock_irqrestore(&port_lock, flags);

 return tmp;
}
