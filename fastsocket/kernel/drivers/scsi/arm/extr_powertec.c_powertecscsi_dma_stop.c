
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_pointer {int dummy; } ;
struct TYPE_3__ {scalar_t__ dma; } ;
struct TYPE_4__ {TYPE_1__ scsi; } ;
struct powertec_info {TYPE_2__ info; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 scalar_t__ NO_DMA ;
 int disable_dma (scalar_t__) ;

__attribute__((used)) static void
powertecscsi_dma_stop(struct Scsi_Host *host, struct scsi_pointer *SCp)
{
 struct powertec_info *info = (struct powertec_info *)host->hostdata;
 if (info->info.scsi.dma != NO_DMA)
  disable_dma(info->info.scsi.dma);
}
