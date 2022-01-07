
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap24xxcam_dma {int dma_stop; } ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int omap24xxcam_dma_abort (struct omap24xxcam_dma*,int ) ;

__attribute__((used)) static void omap24xxcam_dma_stop(struct omap24xxcam_dma *dma, u32 csr)
{
 atomic_inc(&dma->dma_stop);
 omap24xxcam_dma_abort(dma, csr);
 atomic_dec(&dma->dma_stop);
}
