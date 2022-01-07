
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct scsi_cmnd {int dummy; } ;
struct lpfc_hba {int dummy; } ;


 int BG_OP_IN_CRC_OUT_CRC ;
 int BG_OP_IN_CRC_OUT_CSUM ;
 int BG_OP_IN_CRC_OUT_NODIF ;
 int BG_OP_IN_CSUM_OUT_CRC ;
 int BG_OP_IN_CSUM_OUT_NODIF ;
 int BG_OP_IN_NODIF_OUT_CRC ;
 int BG_OP_IN_NODIF_OUT_CSUM ;
 int KERN_ERR ;
 int LOG_BG ;







 scalar_t__ lpfc_cmd_guard_csum (struct scsi_cmnd*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int scsi_get_prot_op (struct scsi_cmnd*) ;

__attribute__((used)) static int
lpfc_sc_to_bg_opcodes(struct lpfc_hba *phba, struct scsi_cmnd *sc,
  uint8_t *txop, uint8_t *rxop)
{
 uint8_t ret = 0;

 if (lpfc_cmd_guard_csum(sc)) {
  switch (scsi_get_prot_op(sc)) {
  case 133:
  case 128:
   *rxop = BG_OP_IN_NODIF_OUT_CSUM;
   *txop = BG_OP_IN_CSUM_OUT_NODIF;
   break;

  case 131:
  case 130:
   *rxop = BG_OP_IN_CRC_OUT_NODIF;
   *txop = BG_OP_IN_NODIF_OUT_CRC;
   break;

  case 132:
  case 129:
   *rxop = BG_OP_IN_CRC_OUT_CSUM;
   *txop = BG_OP_IN_CSUM_OUT_CRC;
   break;

  case 134:
  default:
   lpfc_printf_log(phba, KERN_ERR, LOG_BG,
    "9063 BLKGRD: Bad op/guard:%d/IP combination\n",
     scsi_get_prot_op(sc));
   ret = 1;
   break;

  }
 } else {
  switch (scsi_get_prot_op(sc)) {
  case 131:
  case 130:
   *rxop = BG_OP_IN_CRC_OUT_NODIF;
   *txop = BG_OP_IN_NODIF_OUT_CRC;
   break;

  case 132:
  case 129:
   *rxop = BG_OP_IN_CRC_OUT_CRC;
   *txop = BG_OP_IN_CRC_OUT_CRC;
   break;

  case 133:
  case 128:
   *rxop = BG_OP_IN_NODIF_OUT_CRC;
   *txop = BG_OP_IN_CRC_OUT_NODIF;
   break;

  case 134:
  default:
   lpfc_printf_log(phba, KERN_ERR, LOG_BG,
    "9075 BLKGRD: Bad op/guard:%d/CRC "
    "combination\n", scsi_get_prot_op(sc));
   ret = 1;
   break;
  }
 }

 return ret;
}
