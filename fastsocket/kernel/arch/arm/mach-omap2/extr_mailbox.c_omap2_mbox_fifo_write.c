
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox2_fifo {int msg; } ;
struct omap_mbox2_priv {struct omap_mbox2_fifo tx_fifo; } ;
struct omap_mbox {scalar_t__ priv; } ;
typedef int mbox_msg_t ;


 int mbox_write_reg (int ,int ) ;

__attribute__((used)) static void omap2_mbox_fifo_write(struct omap_mbox *mbox, mbox_msg_t msg)
{
 struct omap_mbox2_fifo *fifo =
  &((struct omap_mbox2_priv *)mbox->priv)->tx_fifo;
 mbox_write_reg(msg, fifo->msg);
}
