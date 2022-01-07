
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mmc_request {int dummy; } ;
struct mmc_omap_host {int dummy; } ;


 int CTO ;
 int OMAP_MMC_READ (struct mmc_omap_host*,int ) ;
 int OMAP_MMC_WRITE (struct mmc_omap_host*,int ,int) ;
 int SDIO ;

__attribute__((used)) static inline void set_cmd_timeout(struct mmc_omap_host *host, struct mmc_request *req)
{
 u16 reg;

 reg = OMAP_MMC_READ(host, SDIO);
 reg &= ~(1 << 5);
 OMAP_MMC_WRITE(host, SDIO, reg);

 OMAP_MMC_WRITE(host, CTO, 0xff);
}
