
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {scalar_t__ sc_data_direction; } ;
struct lpfc_scsi_buf {struct scsi_cmnd* pCmd; } ;
struct lpfc_hba {int dummy; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ SCSI_PROT_READ_INSERT ;
 scalar_t__ SCSI_PROT_WRITE_STRIP ;
 int lpfc_cmd_blksize (struct scsi_cmnd*) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 scalar_t__ scsi_get_prot_op (struct scsi_cmnd*) ;

__attribute__((used)) static int
lpfc_bg_scsi_adjust_dl(struct lpfc_hba *phba,
         struct lpfc_scsi_buf *lpfc_cmd)
{
 struct scsi_cmnd *sc = lpfc_cmd->pCmd;
 int fcpdl;

 fcpdl = scsi_bufflen(sc);


 if (sc->sc_data_direction == DMA_FROM_DEVICE) {

  if (scsi_get_prot_op(sc) == SCSI_PROT_READ_INSERT)
   return fcpdl;

 } else {

  if (scsi_get_prot_op(sc) == SCSI_PROT_WRITE_STRIP)
   return fcpdl;
 }






 fcpdl += (fcpdl / lpfc_cmd_blksize(sc)) * 8;

 return fcpdl;
}
