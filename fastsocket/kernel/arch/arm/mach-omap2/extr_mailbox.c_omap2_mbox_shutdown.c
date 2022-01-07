
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int dummy; } ;


 int clk_disable (int ) ;
 int clk_put (int ) ;
 int mbox_ick_handle ;

__attribute__((used)) static void omap2_mbox_shutdown(struct omap_mbox *mbox)
{
 clk_disable(mbox_ick_handle);
 clk_put(mbox_ick_handle);
}
