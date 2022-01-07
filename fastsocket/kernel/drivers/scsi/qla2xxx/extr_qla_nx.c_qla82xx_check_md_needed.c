
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct qla_hw_data {scalar_t__ fw_major_version; scalar_t__ fw_minor_version; scalar_t__ fw_subminor_version; int fw_dumped; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int QLA_SUCCESS ;
 scalar_t__ ql2xmdenable ;
 int ql_log (int ,TYPE_1__*,int,char*,...) ;
 int ql_log_info ;
 int qla2x00_get_fw_version (TYPE_1__*) ;
 int qla82xx_md_free (TYPE_1__*) ;
 int qla82xx_md_prep (TYPE_1__*) ;

int
qla82xx_check_md_needed(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;
 uint16_t fw_major_version, fw_minor_version, fw_subminor_version;
 int rval = QLA_SUCCESS;

 fw_major_version = ha->fw_major_version;
 fw_minor_version = ha->fw_minor_version;
 fw_subminor_version = ha->fw_subminor_version;

 rval = qla2x00_get_fw_version(vha);
 if (rval != QLA_SUCCESS)
  return rval;

 if (ql2xmdenable) {
  if (!ha->fw_dumped) {
   if (fw_major_version != ha->fw_major_version ||
       fw_minor_version != ha->fw_minor_version ||
       fw_subminor_version != ha->fw_subminor_version) {
    ql_log(ql_log_info, vha, 0xb02d,
        "Firmware version differs "
        "Previous version: %d:%d:%d - "
        "New version: %d:%d:%d\n",
        fw_major_version, fw_minor_version,
        fw_subminor_version,
        ha->fw_major_version,
        ha->fw_minor_version,
        ha->fw_subminor_version);

    qla82xx_md_free(vha);

    qla82xx_md_prep(vha);
   }
  } else
   ql_log(ql_log_info, vha, 0xb02e,
       "Firmware dump available to retrieve\n");
 }
 return rval;
}
