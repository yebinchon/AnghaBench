
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int dummy; } ;


 int mbox_seq_init (struct omap_mbox*) ;

void omap_mbox_init_seq(struct omap_mbox *mbox)
{
 mbox_seq_init(mbox);
}
