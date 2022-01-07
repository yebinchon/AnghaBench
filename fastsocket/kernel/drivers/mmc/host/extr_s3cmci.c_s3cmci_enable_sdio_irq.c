
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s3cmci_host {int sdio_irqen; int irq_state; scalar_t__ base; int irq; int irq_enabled; int irq_disabled; } ;
struct mmc_host {int dummy; } ;


 scalar_t__ S3C2410_SDICON ;
 int S3C2410_SDICON_SDIOIRQ ;
 int S3C2410_SDIIMSK_SDIOIRQ ;
 int disable_imask (struct s3cmci_host*,int ) ;
 int disable_irq_nosync (int ) ;
 int enable_imask (struct s3cmci_host*,int ) ;
 int enable_irq (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct s3cmci_host* mmc_priv (struct mmc_host*) ;
 int readl (scalar_t__) ;
 int s3cmci_check_sdio_irq (struct s3cmci_host*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void s3cmci_enable_sdio_irq(struct mmc_host *mmc, int enable)
{
 struct s3cmci_host *host = mmc_priv(mmc);
 unsigned long flags;
 u32 con;

 local_irq_save(flags);

 con = readl(host->base + S3C2410_SDICON);
 host->sdio_irqen = enable;

 if (enable == host->sdio_irqen)
  goto same_state;

 if (enable) {
  con |= S3C2410_SDICON_SDIOIRQ;
  enable_imask(host, S3C2410_SDIIMSK_SDIOIRQ);

  if (!host->irq_state && !host->irq_disabled) {
   host->irq_state = 1;
   enable_irq(host->irq);
  }
 } else {
  disable_imask(host, S3C2410_SDIIMSK_SDIOIRQ);
  con &= ~S3C2410_SDICON_SDIOIRQ;

  if (!host->irq_enabled && host->irq_state) {
   disable_irq_nosync(host->irq);
   host->irq_state = 0;
  }
 }

 writel(con, host->base + S3C2410_SDICON);

 same_state:
 local_irq_restore(flags);

 s3cmci_check_sdio_irq(host);
}
