
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {scalar_t__ dma; int lock; int mmc; int * mrq; } ;
struct mmc_request {int dummy; } ;


 int WBSD_IDX_DMA ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (scalar_t__) ;
 int disable_dma (scalar_t__) ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int release_dma_lock (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wbsd_write_index (struct wbsd_host*,int ,int ) ;

__attribute__((used)) static void wbsd_request_end(struct wbsd_host *host, struct mmc_request *mrq)
{
 unsigned long dmaflags;

 if (host->dma >= 0) {



  dmaflags = claim_dma_lock();
  disable_dma(host->dma);
  clear_dma_ff(host->dma);
  release_dma_lock(dmaflags);




  wbsd_write_index(host, WBSD_IDX_DMA, 0);
 }

 host->mrq = ((void*)0);




 spin_unlock(&host->lock);
 mmc_request_done(host->mmc, mrq);
 spin_lock(&host->lock);
}
