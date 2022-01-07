
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tmio_mmc_host {int bus_shift; scalar_t__ cnf; } ;


 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void sd_config_write8(struct tmio_mmc_host *host, int addr,
  u8 val)
{
 writeb(val, host->cnf + (addr << host->bus_shift));
}
