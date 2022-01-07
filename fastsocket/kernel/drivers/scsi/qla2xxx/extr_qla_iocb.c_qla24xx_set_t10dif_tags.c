
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_cmnd {int dummy; } ;
struct fw_dif_context {int* ref_tag_mask; int* app_tag_mask; void* app_tag; void* ref_tag; } ;
typedef int srb_t ;


 struct scsi_cmnd* GET_CMD_SP (int *) ;




 void* __constant_cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int qla2x00_hba_err_chk_enabled (int *) ;
 int scsi_get_lba (struct scsi_cmnd*) ;
 int scsi_get_prot_type (struct scsi_cmnd*) ;

__attribute__((used)) static inline void
qla24xx_set_t10dif_tags(srb_t *sp, struct fw_dif_context *pkt,
    unsigned int protcnt)
{
 struct scsi_cmnd *cmd = GET_CMD_SP(sp);

 switch (scsi_get_prot_type(cmd)) {
 case 131:




  pkt->ref_tag = cpu_to_le32((uint32_t)
      (0xffffffff & scsi_get_lba(cmd)));

  if (!qla2x00_hba_err_chk_enabled(sp))
   break;

  pkt->ref_tag_mask[0] = 0xff;
  pkt->ref_tag_mask[1] = 0xff;
  pkt->ref_tag_mask[2] = 0xff;
  pkt->ref_tag_mask[3] = 0xff;
  break;





 case 129:
  pkt->app_tag = __constant_cpu_to_le16(0);
  pkt->app_tag_mask[0] = 0x0;
  pkt->app_tag_mask[1] = 0x0;

  pkt->ref_tag = cpu_to_le32((uint32_t)
      (0xffffffff & scsi_get_lba(cmd)));

  if (!qla2x00_hba_err_chk_enabled(sp))
   break;


  pkt->ref_tag_mask[0] = 0xff;
  pkt->ref_tag_mask[1] = 0xff;
  pkt->ref_tag_mask[2] = 0xff;
  pkt->ref_tag_mask[3] = 0xff;
  break;


 case 128:
  pkt->ref_tag_mask[0] = pkt->ref_tag_mask[1] =
   pkt->ref_tag_mask[2] = pkt->ref_tag_mask[3] =
        0x00;
  break;





 case 130:
  pkt->ref_tag = cpu_to_le32((uint32_t)
      (0xffffffff & scsi_get_lba(cmd)));
  pkt->app_tag = __constant_cpu_to_le16(0);
  pkt->app_tag_mask[0] = 0x0;
  pkt->app_tag_mask[1] = 0x0;

  if (!qla2x00_hba_err_chk_enabled(sp))
   break;


  pkt->ref_tag_mask[0] = 0xff;
  pkt->ref_tag_mask[1] = 0xff;
  pkt->ref_tag_mask[2] = 0xff;
  pkt->ref_tag_mask[3] = 0xff;
  break;
 }
}
