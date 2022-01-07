
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int dummy; } ;


 int omap_mbox_fini (struct omap_mbox*) ;

void omap_mbox_put(struct omap_mbox *mbox)
{
 omap_mbox_fini(mbox);
}
