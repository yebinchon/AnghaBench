
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tmio_mmc_host {int bus_shift; scalar_t__ ctl; } ;


 int readw (scalar_t__) ;

__attribute__((used)) static inline u16 sd_ctrl_read16(struct tmio_mmc_host *host, int addr)
{
 return readw(host->ctl + (addr << host->bus_shift));
}
