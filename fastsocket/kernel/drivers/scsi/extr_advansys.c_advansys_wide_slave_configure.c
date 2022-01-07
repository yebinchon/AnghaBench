
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_device {int id; scalar_t__ lun; TYPE_1__* host; scalar_t__ tagged_supported; scalar_t__ ppr; scalar_t__ sdtr; scalar_t__ wdtr; } ;
struct TYPE_6__ {unsigned short wdtr_able; unsigned short sdtr_able; scalar_t__ chip_type; unsigned short tagqng_able; int max_dvc_qng; int iop_base; } ;
struct TYPE_5__ {int cmd_per_lun; } ;
typedef int AdvPortAddr ;
typedef TYPE_2__ ADV_DVC_VAR ;


 scalar_t__ ADV_CHIP_ASC38C1600 ;
 scalar_t__ ASC_MC_NUMBER_OF_MAX_CMD ;
 int ASC_MC_TAGQNG_ABLE ;
 int AdvReadWordLram (int ,int ,unsigned short) ;
 int AdvWriteByteLram (int ,scalar_t__,int ) ;
 int AdvWriteWordLram (int ,int ,unsigned short) ;
 int MSG_ORDERED_TAG ;
 int advansys_wide_enable_ppr (TYPE_2__*,int ,unsigned short) ;
 int advansys_wide_enable_sdtr (int ,unsigned short) ;
 int advansys_wide_enable_wdtr (int ,unsigned short) ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int ) ;

__attribute__((used)) static void
advansys_wide_slave_configure(struct scsi_device *sdev, ADV_DVC_VAR *adv_dvc)
{
 AdvPortAddr iop_base = adv_dvc->iop_base;
 unsigned short tidmask = 1 << sdev->id;

 if (sdev->lun == 0) {






  if ((adv_dvc->wdtr_able & tidmask) && sdev->wdtr)
   advansys_wide_enable_wdtr(iop_base, tidmask);
  if ((adv_dvc->sdtr_able & tidmask) && sdev->sdtr)
   advansys_wide_enable_sdtr(iop_base, tidmask);
  if (adv_dvc->chip_type == ADV_CHIP_ASC38C1600 && sdev->ppr)
   advansys_wide_enable_ppr(adv_dvc, iop_base, tidmask);







  if ((adv_dvc->tagqng_able & tidmask) &&
      sdev->tagged_supported) {
   unsigned short cfg_word;
   AdvReadWordLram(iop_base, ASC_MC_TAGQNG_ABLE, cfg_word);
   cfg_word |= tidmask;
   AdvWriteWordLram(iop_base, ASC_MC_TAGQNG_ABLE,
      cfg_word);
   AdvWriteByteLram(iop_base,
      ASC_MC_NUMBER_OF_MAX_CMD + sdev->id,
      adv_dvc->max_dvc_qng);
  }
 }

 if ((adv_dvc->tagqng_able & tidmask) && sdev->tagged_supported) {
  scsi_adjust_queue_depth(sdev, MSG_ORDERED_TAG,
     adv_dvc->max_dvc_qng);
 } else {
  scsi_adjust_queue_depth(sdev, 0, sdev->host->cmd_per_lun);
 }
}
