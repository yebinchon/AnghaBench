
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_queued_cmd {TYPE_1__* scsicmd; } ;
struct TYPE_2__ {int* cmnd; } ;
__attribute__((used)) static int pdc_check_atapi_dma(struct ata_queued_cmd *qc)
{
 u8 *scsicmd = qc->scsicmd->cmnd;
 int pio = 1;


 switch (scsicmd[0]) {
 case 129:
 case 130:
 case 128:
 case 132:
 case 133:
 case 131:
 case 0xad:
 case 0xbe:
  pio = 0;
 }

 if (scsicmd[0] == 130) {
  unsigned int lba =
   (scsicmd[2] << 24) |
   (scsicmd[3] << 16) |
   (scsicmd[4] << 8) |
   scsicmd[5];
  if (lba >= 0xFFFF4FA2)
   pio = 1;
 }
 return pio;
}
