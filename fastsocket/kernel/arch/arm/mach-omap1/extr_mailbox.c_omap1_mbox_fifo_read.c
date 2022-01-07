
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox1_fifo {int cmd; int data; } ;
struct omap_mbox1_priv {struct omap_mbox1_fifo rx_fifo; } ;
struct omap_mbox {scalar_t__ priv; } ;
typedef int mbox_msg_t ;


 int mbox_read_reg (int ) ;

__attribute__((used)) static mbox_msg_t omap1_mbox_fifo_read(struct omap_mbox *mbox)
{
 struct omap_mbox1_fifo *fifo =
  &((struct omap_mbox1_priv *)mbox->priv)->rx_fifo;
 mbox_msg_t msg;

 msg = mbox_read_reg(fifo->data);
 msg |= ((mbox_msg_t) mbox_read_reg(fifo->cmd)) << 16;

 return msg;
}
