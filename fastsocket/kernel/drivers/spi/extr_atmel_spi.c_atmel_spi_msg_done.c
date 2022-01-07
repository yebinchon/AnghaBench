
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_message {int status; int context; int (* complete ) (int ) ;int actual_length; int queue; int spi; } ;
struct TYPE_2__ {int parent; } ;
struct spi_master {TYPE_1__ dev; } ;
struct atmel_spi {scalar_t__ stopping; int queue; int * next_transfer; int * current_transfer; int lock; int stay; } ;


 int PTCR ;
 int RXTDIS ;
 int SPI_BIT (int ) ;
 int TXTDIS ;
 int atmel_spi_next_message (struct spi_master*) ;
 int cs_deactivate (struct atmel_spi*,int ) ;
 int dev_dbg (int ,char*,int ) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int spi_writel (struct atmel_spi*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void
atmel_spi_msg_done(struct spi_master *master, struct atmel_spi *as,
  struct spi_message *msg, int status, int stay)
{
 if (!stay || status < 0)
  cs_deactivate(as, msg->spi);
 else
  as->stay = msg->spi;

 list_del(&msg->queue);
 msg->status = status;

 dev_dbg(master->dev.parent,
  "xfer complete: %u bytes transferred\n",
  msg->actual_length);

 spin_unlock(&as->lock);
 msg->complete(msg->context);
 spin_lock(&as->lock);

 as->current_transfer = ((void*)0);
 as->next_transfer = ((void*)0);


 if (list_empty(&as->queue) || as->stopping)
  spi_writel(as, PTCR, SPI_BIT(RXTDIS) | SPI_BIT(TXTDIS));
 else
  atmel_spi_next_message(master);
}
