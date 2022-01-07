
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmio_mmc_host {int bus_shift; scalar_t__ ctl; } ;


 int writew (int,scalar_t__) ;

__attribute__((used)) static inline void sd_ctrl_write32(struct tmio_mmc_host *host, int addr,
  u32 val)
{
 writew(val, host->ctl + (addr << host->bus_shift));
 writew(val >> 16, host->ctl + ((addr + 2) << host->bus_shift));
}
