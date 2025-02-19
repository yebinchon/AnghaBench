
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43_wldev {TYPE_2__* wl; } ;
struct b43_txstatus {int rts_count; int acked; scalar_t__ for_ampdu; scalar_t__ intermediate; } ;
struct TYPE_3__ {int dot11RTSSuccessCount; int dot11RTSFailureCount; int dot11ACKFailureCount; } ;
struct TYPE_4__ {TYPE_1__ ieee_stats; } ;


 int b43_debugfs_log_txstat (struct b43_wldev*,struct b43_txstatus const*) ;
 int b43_dma_handle_txstatus (struct b43_wldev*,struct b43_txstatus const*) ;
 int b43_phy_txpower_check (struct b43_wldev*,int ) ;
 int b43_pio_handle_txstatus (struct b43_wldev*,struct b43_txstatus const*) ;
 scalar_t__ b43_using_pio_transfers (struct b43_wldev*) ;

void b43_handle_txstatus(struct b43_wldev *dev,
    const struct b43_txstatus *status)
{
 b43_debugfs_log_txstat(dev, status);

 if (status->intermediate)
  return;
 if (status->for_ampdu)
  return;
 if (!status->acked)
  dev->wl->ieee_stats.dot11ACKFailureCount++;
 if (status->rts_count) {
  if (status->rts_count == 0xF)
   dev->wl->ieee_stats.dot11RTSFailureCount++;
  else
   dev->wl->ieee_stats.dot11RTSSuccessCount++;
 }

 if (b43_using_pio_transfers(dev))
  b43_pio_handle_txstatus(dev, status);
 else
  b43_dma_handle_txstatus(dev, status);

 b43_phy_txpower_check(dev, 0);
}
