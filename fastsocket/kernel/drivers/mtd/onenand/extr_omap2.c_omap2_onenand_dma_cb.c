
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap2_onenand {int dma_done; } ;


 int complete (int *) ;

__attribute__((used)) static void omap2_onenand_dma_cb(int lch, u16 ch_status, void *data)
{
 struct omap2_onenand *c = data;

 complete(&c->dma_done);
}
