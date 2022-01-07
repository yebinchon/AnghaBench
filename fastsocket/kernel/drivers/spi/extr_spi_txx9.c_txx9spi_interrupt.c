
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9spi {int waitq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TXx9_SPCR0 ;
 int TXx9_SPCR0_RBSIE ;
 int txx9spi_rd (struct txx9spi*,int ) ;
 int txx9spi_wr (struct txx9spi*,int,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t txx9spi_interrupt(int irq, void *dev_id)
{
 struct txx9spi *c = dev_id;


 txx9spi_wr(c, txx9spi_rd(c, TXx9_SPCR0) & ~TXx9_SPCR0_RBSIE,
   TXx9_SPCR0);
 wake_up(&c->waitq);
 return IRQ_HANDLED;
}
