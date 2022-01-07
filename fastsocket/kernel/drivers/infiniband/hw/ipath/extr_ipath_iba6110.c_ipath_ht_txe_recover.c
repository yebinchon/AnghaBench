
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipath_devdata {TYPE_1__* pcidev; } ;
struct TYPE_4__ {int sps_txeparity; } ;
struct TYPE_3__ {int dev; } ;


 int dev_info (int *,char*) ;
 TYPE_2__ ipath_stats ;

__attribute__((used)) static void ipath_ht_txe_recover(struct ipath_devdata *dd)
{
 ++ipath_stats.sps_txeparity;
 dev_info(&dd->pcidev->dev,
  "Recovering from TXE PIO parity error\n");
}
