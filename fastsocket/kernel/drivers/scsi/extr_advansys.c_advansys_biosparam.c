
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_device {int host; } ;
struct block_device {int dummy; } ;
struct TYPE_5__ {int bios_ctrl; } ;
struct TYPE_4__ {int dvc_cntl; } ;
struct TYPE_6__ {TYPE_2__ adv_dvc_var; TYPE_1__ asc_dvc_var; } ;
struct asc_board {TYPE_3__ dvc_var; } ;
typedef int sector_t ;


 int ASC_CNTL_BIOS_GT_1GB ;
 int ASC_DBG (int,char*) ;
 scalar_t__ ASC_NARROW_BOARD (struct asc_board*) ;
 int ASC_STATS (int ,int ) ;
 int BIOS_CTRL_EXTENDED_XLAT ;
 int biosparam ;
 struct asc_board* shost_priv (int ) ;

__attribute__((used)) static int
advansys_biosparam(struct scsi_device *sdev, struct block_device *bdev,
     sector_t capacity, int ip[])
{
 struct asc_board *boardp = shost_priv(sdev->host);

 ASC_DBG(1, "begin\n");
 ASC_STATS(sdev->host, biosparam);
 if (ASC_NARROW_BOARD(boardp)) {
  if ((boardp->dvc_var.asc_dvc_var.dvc_cntl &
       ASC_CNTL_BIOS_GT_1GB) && capacity > 0x200000) {
   ip[0] = 255;
   ip[1] = 63;
  } else {
   ip[0] = 64;
   ip[1] = 32;
  }
 } else {
  if ((boardp->dvc_var.adv_dvc_var.bios_ctrl &
       BIOS_CTRL_EXTENDED_XLAT) && capacity > 0x200000) {
   ip[0] = 255;
   ip[1] = 63;
  } else {
   ip[0] = 64;
   ip[1] = 32;
  }
 }
 ip[2] = (unsigned long)capacity / (ip[0] * ip[1]);
 ASC_DBG(1, "end\n");
 return 0;
}
