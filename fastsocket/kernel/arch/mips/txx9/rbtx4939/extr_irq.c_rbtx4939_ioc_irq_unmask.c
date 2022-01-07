
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int RBTX4939_IRQ_IOC ;
 int rbtx4939_ien_addr ;
 int readb (int ) ;
 int writeb (int,int ) ;

__attribute__((used)) static void rbtx4939_ioc_irq_unmask(unsigned int irq)
{
 int ioc_nr = irq - RBTX4939_IRQ_IOC;

 writeb(readb(rbtx4939_ien_addr) | (1 << ioc_nr), rbtx4939_ien_addr);
}
