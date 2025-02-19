
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct s3cmci_host {int dma_complete; void* complete_what; TYPE_2__* mrq; int complete_lock; int pio_tasklet; scalar_t__ dmatogo; scalar_t__ base; } ;
struct s3c2410_dma_chan {int dummy; } ;
typedef enum s3c2410_dma_buffresult { ____Placeholder_s3c2410_dma_buffresult } s3c2410_dma_buffresult ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int error; } ;


 int BUG_ON (int) ;
 void* COMPLETION_FINALIZE ;
 int EINVAL ;
 int S3C2410_RES_OK ;
 scalar_t__ S3C2410_SDICMDSTAT ;
 scalar_t__ S3C2410_SDIDCNT ;
 scalar_t__ S3C2410_SDIDSTA ;
 scalar_t__ S3C2410_SDIFSTA ;
 int clear_imask (struct s3cmci_host*) ;
 int dbg (struct s3cmci_host*,int ,char*,int,int ,int ,...) ;
 int dbg_dma ;
 int dbg_fail ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void s3cmci_dma_done_callback(struct s3c2410_dma_chan *dma_ch,
         void *buf_id, int size,
         enum s3c2410_dma_buffresult result)
{
 struct s3cmci_host *host = buf_id;
 unsigned long iflags;
 u32 mci_csta, mci_dsta, mci_fsta, mci_dcnt;

 mci_csta = readl(host->base + S3C2410_SDICMDSTAT);
 mci_dsta = readl(host->base + S3C2410_SDIDSTA);
 mci_fsta = readl(host->base + S3C2410_SDIFSTA);
 mci_dcnt = readl(host->base + S3C2410_SDIDCNT);

 BUG_ON(!host->mrq);
 BUG_ON(!host->mrq->data);
 BUG_ON(!host->dmatogo);

 spin_lock_irqsave(&host->complete_lock, iflags);

 if (result != S3C2410_RES_OK) {
  dbg(host, dbg_fail, "DMA FAILED: csta=0x%08x dsta=0x%08x "
   "fsta=0x%08x dcnt:0x%08x result:0x%08x toGo:%u\n",
   mci_csta, mci_dsta, mci_fsta,
   mci_dcnt, result, host->dmatogo);

  goto fail_request;
 }

 host->dmatogo--;
 if (host->dmatogo) {
  dbg(host, dbg_dma, "DMA DONE  Size:%i DSTA:[%08x] "
   "DCNT:[%08x] toGo:%u\n",
   size, mci_dsta, mci_dcnt, host->dmatogo);

  goto out;
 }

 dbg(host, dbg_dma, "DMA FINISHED Size:%i DSTA:%08x DCNT:%08x\n",
  size, mci_dsta, mci_dcnt);

 host->dma_complete = 1;
 host->complete_what = COMPLETION_FINALIZE;

out:
 tasklet_schedule(&host->pio_tasklet);
 spin_unlock_irqrestore(&host->complete_lock, iflags);
 return;

fail_request:
 host->mrq->data->error = -EINVAL;
 host->complete_what = COMPLETION_FINALIZE;
 clear_imask(host);

 goto out;
}
