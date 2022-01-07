
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mpc8xxx_spi {int (* get_tx ) (struct mpc8xxx_spi*) ;TYPE_1__* base; int done; scalar_t__ count; int (* get_rx ) (int,struct mpc8xxx_spi*) ;scalar_t__ rx; } ;
typedef int s32 ;
typedef int irqreturn_t ;
struct TYPE_2__ {int event; int transmit; int receive; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SPIE_NE ;
 int SPIE_NF ;
 int complete (int *) ;
 int cpu_relax () ;
 int mpc8xxx_spi_read_reg (int *) ;
 int mpc8xxx_spi_write_reg (int *,int) ;
 int stub1 (int,struct mpc8xxx_spi*) ;
 int stub2 (struct mpc8xxx_spi*) ;

__attribute__((used)) static irqreturn_t mpc8xxx_spi_irq(s32 irq, void *context_data)
{
 struct mpc8xxx_spi *mpc8xxx_spi = context_data;
 u32 event;
 irqreturn_t ret = IRQ_NONE;


 event = mpc8xxx_spi_read_reg(&mpc8xxx_spi->base->event);


 if (event & SPIE_NE) {
  u32 rx_data = mpc8xxx_spi_read_reg(&mpc8xxx_spi->base->receive);

  if (mpc8xxx_spi->rx)
   mpc8xxx_spi->get_rx(rx_data, mpc8xxx_spi);

  ret = IRQ_HANDLED;
 }

 if ((event & SPIE_NF) == 0)

  while (((event =
    mpc8xxx_spi_read_reg(&mpc8xxx_spi->base->event)) &
      SPIE_NF) == 0)
   cpu_relax();

 mpc8xxx_spi->count -= 1;
 if (mpc8xxx_spi->count) {
  u32 word = mpc8xxx_spi->get_tx(mpc8xxx_spi);
  mpc8xxx_spi_write_reg(&mpc8xxx_spi->base->transmit, word);
 } else {
  complete(&mpc8xxx_spi->done);
 }


 mpc8xxx_spi_write_reg(&mpc8xxx_spi->base->event, event);

 return ret;
}
