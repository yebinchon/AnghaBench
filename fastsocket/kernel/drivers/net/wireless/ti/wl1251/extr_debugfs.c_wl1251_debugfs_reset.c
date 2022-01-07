
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ excessive_retries; scalar_t__ retry_count; int * fw_stats; } ;
struct wl1251 {TYPE_1__ stats; } ;


 int memset (int *,int ,int) ;

void wl1251_debugfs_reset(struct wl1251 *wl)
{
 if (wl->stats.fw_stats != ((void*)0))
  memset(wl->stats.fw_stats, 0, sizeof(*wl->stats.fw_stats));
 wl->stats.retry_count = 0;
 wl->stats.excessive_retries = 0;
}
