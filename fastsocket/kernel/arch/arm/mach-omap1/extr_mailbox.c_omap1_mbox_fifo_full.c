
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox1_fifo {int flag; } ;
struct omap_mbox1_priv {struct omap_mbox1_fifo rx_fifo; } ;
struct omap_mbox {scalar_t__ priv; } ;


 int mbox_read_reg (int ) ;

__attribute__((used)) static int omap1_mbox_fifo_full(struct omap_mbox *mbox)
{
 struct omap_mbox1_fifo *fifo =
  &((struct omap_mbox1_priv *)mbox->priv)->rx_fifo;

 return (mbox_read_reg(fifo->flag));
}
