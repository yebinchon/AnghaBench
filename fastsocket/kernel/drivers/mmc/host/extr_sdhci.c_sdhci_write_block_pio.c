
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct TYPE_5__ {size_t consumed; scalar_t__* addr; int length; } ;
struct sdhci_host {TYPE_2__ sg_miter; TYPE_1__* data; } ;
struct TYPE_4__ {size_t blksz; } ;


 int BUG () ;
 int DBG (char*) ;
 int SDHCI_BUFFER ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 size_t min (int ,size_t) ;
 int sdhci_writel (struct sdhci_host*,size_t,int ) ;
 int sg_miter_next (TYPE_2__*) ;
 int sg_miter_stop (TYPE_2__*) ;

__attribute__((used)) static void sdhci_write_block_pio(struct sdhci_host *host)
{
 unsigned long flags;
 size_t blksize, len, chunk;
 u32 scratch;
 u8 *buf;

 DBG("PIO writing\n");

 blksize = host->data->blksz;
 chunk = 0;
 scratch = 0;

 local_irq_save(flags);

 while (blksize) {
  if (!sg_miter_next(&host->sg_miter))
   BUG();

  len = min(host->sg_miter.length, blksize);

  blksize -= len;
  host->sg_miter.consumed = len;

  buf = host->sg_miter.addr;

  while (len) {
   scratch |= (u32)*buf << (chunk * 8);

   buf++;
   chunk++;
   len--;

   if ((chunk == 4) || ((len == 0) && (blksize == 0))) {
    sdhci_writel(host, scratch, SDHCI_BUFFER);
    chunk = 0;
    scratch = 0;
   }
  }
 }

 sg_miter_stop(&host->sg_miter);

 local_irq_restore(flags);
}
