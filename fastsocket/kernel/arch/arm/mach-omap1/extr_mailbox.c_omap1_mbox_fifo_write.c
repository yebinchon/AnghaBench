
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox1_fifo {int cmd; int data; } ;
struct omap_mbox1_priv {struct omap_mbox1_fifo tx_fifo; } ;
struct omap_mbox {scalar_t__ priv; } ;
typedef int mbox_msg_t ;


 int mbox_write_reg (int,int ) ;

__attribute__((used)) static void
omap1_mbox_fifo_write(struct omap_mbox *mbox, mbox_msg_t msg)
{
 struct omap_mbox1_fifo *fifo =
  &((struct omap_mbox1_priv *)mbox->priv)->tx_fifo;

 mbox_write_reg(msg & 0xffff, fifo->data);
 mbox_write_reg(msg >> 16, fifo->cmd);
}
