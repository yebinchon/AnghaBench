
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int sg_len; scalar_t__ sg_off; int sg_ptr; } ;


 int sg_next (int ) ;

__attribute__((used)) static inline int tmio_mmc_next_sg(struct tmio_mmc_host *host)
{
 host->sg_ptr = sg_next(host->sg_ptr);
 host->sg_off = 0;
 return --host->sg_len;
}
