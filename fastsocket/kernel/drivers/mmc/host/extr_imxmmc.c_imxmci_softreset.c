
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxmci_host {scalar_t__ base; } ;


 scalar_t__ MMC_REG_BLK_LEN ;
 scalar_t__ MMC_REG_NOB ;
 scalar_t__ MMC_REG_RES_TO ;
 scalar_t__ MMC_REG_STR_STP_CLK ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void imxmci_softreset(struct imxmci_host *host)
{
 int i;


 writew(0x08, host->base + MMC_REG_STR_STP_CLK);
 writew(0x0D, host->base + MMC_REG_STR_STP_CLK);

 for (i = 0; i < 8; i++)
  writew(0x05, host->base + MMC_REG_STR_STP_CLK);

 writew(0xff, host->base + MMC_REG_RES_TO);
 writew(512, host->base + MMC_REG_BLK_LEN);
 writew(1, host->base + MMC_REG_NOB);
}
