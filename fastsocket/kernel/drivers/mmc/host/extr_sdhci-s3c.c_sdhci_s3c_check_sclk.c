
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_s3c {int cur_clk; TYPE_1__* pdev; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ S3C_SDHCI_CONTROL2 ;
 int S3C_SDHCI_CTRL2_SELBASECLK_MASK ;
 int S3C_SDHCI_CTRL2_SELBASECLK_SHIFT ;
 int dev_dbg (int *,char*) ;
 int get_curclk (int) ;
 int readl (scalar_t__) ;
 struct sdhci_s3c* to_s3c (struct sdhci_host*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sdhci_s3c_check_sclk(struct sdhci_host *host)
{
 struct sdhci_s3c *ourhost = to_s3c(host);
 u32 tmp = readl(host->ioaddr + S3C_SDHCI_CONTROL2);

 if (get_curclk(tmp) != ourhost->cur_clk) {
  dev_dbg(&ourhost->pdev->dev, "restored ctrl2 clock setting\n");

  tmp &= ~S3C_SDHCI_CTRL2_SELBASECLK_MASK;
  tmp |= ourhost->cur_clk << S3C_SDHCI_CTRL2_SELBASECLK_SHIFT;
  writel(tmp, host->ioaddr + 0x80);
 }
}
