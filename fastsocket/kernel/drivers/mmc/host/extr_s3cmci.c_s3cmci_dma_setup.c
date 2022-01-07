
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3cmci_host {int dma; scalar_t__ sdidata; TYPE_1__* mem; } ;
typedef enum s3c2410_dmasrc { ____Placeholder_s3c2410_dmasrc } s3c2410_dmasrc ;
struct TYPE_2__ {scalar_t__ start; } ;


 int S3C2410_DMAF_AUTOSTART ;
 int s3c2410_dma_config (int ,int) ;
 int s3c2410_dma_devconfig (int ,int,scalar_t__) ;
 int s3c2410_dma_set_buffdone_fn (int ,int ) ;
 int s3c2410_dma_setflags (int ,int ) ;
 int s3cmci_dma_done_callback ;

__attribute__((used)) static void s3cmci_dma_setup(struct s3cmci_host *host,
        enum s3c2410_dmasrc source)
{
 static enum s3c2410_dmasrc last_source = -1;
 static int setup_ok;

 if (last_source == source)
  return;

 last_source = source;

 s3c2410_dma_devconfig(host->dma, source,
         host->mem->start + host->sdidata);

 if (!setup_ok) {
  s3c2410_dma_config(host->dma, 4);
  s3c2410_dma_set_buffdone_fn(host->dma,
         s3cmci_dma_done_callback);
  s3c2410_dma_setflags(host->dma, S3C2410_DMAF_AUTOSTART);
  setup_ok = 1;
 }
}
