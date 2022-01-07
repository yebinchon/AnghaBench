
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ata_queued_cmd {TYPE_2__* ap; TYPE_1__* scsicmd; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int* cmnd; } ;


 int K2_FLAG_NO_ATAPI_DMA ;







__attribute__((used)) static int k2_sata_check_atapi_dma(struct ata_queued_cmd *qc)
{
 u8 cmnd = qc->scsicmd->cmnd[0];

 if (qc->ap->flags & K2_FLAG_NO_ATAPI_DMA)
  return -1;
 else {
  switch (cmnd) {
  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
  case 128:
   return 0;

  default:
   return -1;
  }

 }
}
