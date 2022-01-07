
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_omap_host {int buffer_bytes_left; scalar_t__ sg_idx; scalar_t__ sg_len; int total_bytes_left; int buffer; scalar_t__ virt_base; TYPE_1__* data; } ;
struct TYPE_2__ {int bytes_xfered; } ;


 int BUG_ON (int) ;
 scalar_t__ OMAP_MMC_REG_DATA ;
 int __raw_readsw (scalar_t__,int ,int) ;
 int __raw_writesw (scalar_t__,int ,int) ;
 int mmc_omap_sg_to_buf (struct mmc_omap_host*) ;

__attribute__((used)) static void
mmc_omap_xfer_data(struct mmc_omap_host *host, int write)
{
 int n;

 if (host->buffer_bytes_left == 0) {
  host->sg_idx++;
  BUG_ON(host->sg_idx == host->sg_len);
  mmc_omap_sg_to_buf(host);
 }
 n = 64;
 if (n > host->buffer_bytes_left)
  n = host->buffer_bytes_left;
 host->buffer_bytes_left -= n;
 host->total_bytes_left -= n;
 host->data->bytes_xfered += n;

 if (write) {
  __raw_writesw(host->virt_base + OMAP_MMC_REG_DATA, host->buffer, n);
 } else {
  __raw_readsw(host->virt_base + OMAP_MMC_REG_DATA, host->buffer, n);
 }
}
