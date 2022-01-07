
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox2_fifo {int msg; } ;
struct omap_mbox2_priv {struct omap_mbox2_fifo rx_fifo; } ;
struct omap_mbox {scalar_t__ priv; } ;
typedef int mbox_msg_t ;


 int mbox_read_reg (int ) ;

__attribute__((used)) static mbox_msg_t omap2_mbox_fifo_read(struct omap_mbox *mbox)
{
 struct omap_mbox2_fifo *fifo =
  &((struct omap_mbox2_priv *)mbox->priv)->rx_fifo;
 return (mbox_msg_t) mbox_read_reg(fifo->msg);
}
