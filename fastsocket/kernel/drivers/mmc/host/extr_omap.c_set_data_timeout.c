
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct mmc_request {TYPE_2__* data; } ;
struct mmc_omap_host {TYPE_1__* current_slot; } ;
struct TYPE_4__ {unsigned int timeout_ns; scalar_t__ timeout_clks; } ;
struct TYPE_3__ {int fclk_freq; } ;


 int DTO ;
 int OMAP_MMC_READ (struct mmc_omap_host*,int ) ;
 int OMAP_MMC_WRITE (struct mmc_omap_host*,int ,unsigned int) ;
 int SDIO ;

__attribute__((used)) static inline void set_data_timeout(struct mmc_omap_host *host, struct mmc_request *req)
{
 unsigned int timeout, cycle_ns;
 u16 reg;

 cycle_ns = 1000000000 / host->current_slot->fclk_freq;
 timeout = req->data->timeout_ns / cycle_ns;
 timeout += req->data->timeout_clks;


 reg = OMAP_MMC_READ(host, SDIO);
 if (timeout > 0xffff) {
  reg |= (1 << 5);
  timeout /= 1024;
 } else
  reg &= ~(1 << 5);
 OMAP_MMC_WRITE(host, SDIO, reg);
 OMAP_MMC_WRITE(host, DTO, timeout);
}
