
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tmio_mmc_host {int bus_shift; scalar_t__ ctl; } ;


 int readsw (scalar_t__,int *,int) ;

__attribute__((used)) static inline void sd_ctrl_read16_rep(struct tmio_mmc_host *host, int addr,
  u16 *buf, int count)
{
 readsw(host->ctl + (addr << host->bus_shift), buf, count);
}
