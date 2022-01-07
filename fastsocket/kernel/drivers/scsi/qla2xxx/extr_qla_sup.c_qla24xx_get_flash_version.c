
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct qla_hw_data {int* bios_revision; int* efi_revision; int* fcode_revision; int* fw_revision; int flt_region_boot; int flt_region_fw; int* gold_fw_version; int flt_region_gold_fw; TYPE_1__* isp_ops; } ;
struct TYPE_9__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_8__ {int (* read_optrom ) (TYPE_2__*,int*,int,int) ;} ;


 int BIT_7 ;
 int IS_QLA81XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;



 void* be32_to_cpu (int) ;
 int memset (int*,int ,int) ;
 int ql_dbg (int ,TYPE_2__*,int,char*,int,int,...) ;
 int ql_dbg_init ;
 int ql_log (int ,TYPE_2__*,int,char*,...) ;
 int ql_log_fatal ;
 int ql_log_warn ;
 int qla24xx_read_flash_data (TYPE_2__*,int*,int,int) ;
 int stub1 (TYPE_2__*,int*,int,int) ;

int
qla24xx_get_flash_version(scsi_qla_host_t *vha, void *mbuf)
{
 int ret = QLA_SUCCESS;
 uint32_t pcihdr, pcids;
 uint32_t *dcode;
 uint8_t *bcode;
 uint8_t code_type, last_image;
 int i;
 struct qla_hw_data *ha = vha->hw;

 if (IS_QLA82XX(ha))
  return ret;

 if (!mbuf)
  return QLA_FUNCTION_FAILED;

 memset(ha->bios_revision, 0, sizeof(ha->bios_revision));
 memset(ha->efi_revision, 0, sizeof(ha->efi_revision));
 memset(ha->fcode_revision, 0, sizeof(ha->fcode_revision));
 memset(ha->fw_revision, 0, sizeof(ha->fw_revision));

 dcode = mbuf;


 pcihdr = ha->flt_region_boot << 2;
 last_image = 1;
 do {

  qla24xx_read_flash_data(vha, dcode, pcihdr >> 2, 0x20);
  bcode = mbuf + (pcihdr % 4);
  if (bcode[0x0] != 0x55 || bcode[0x1] != 0xaa) {

   ql_log(ql_log_fatal, vha, 0x0059,
       "No matching ROM signature.\n");
   ret = QLA_FUNCTION_FAILED;
   break;
  }


  pcids = pcihdr + ((bcode[0x19] << 8) | bcode[0x18]);

  qla24xx_read_flash_data(vha, dcode, pcids >> 2, 0x20);
  bcode = mbuf + (pcihdr % 4);


  if (bcode[0x0] != 'P' || bcode[0x1] != 'C' ||
      bcode[0x2] != 'I' || bcode[0x3] != 'R') {

   ql_log(ql_log_fatal, vha, 0x005a,
       "PCI data struct not found pcir_adr=%x.\n", pcids);
   ret = QLA_FUNCTION_FAILED;
   break;
  }


  code_type = bcode[0x14];
  switch (code_type) {
  case 130:

   ha->bios_revision[0] = bcode[0x12];
   ha->bios_revision[1] = bcode[0x13];
   ql_dbg(ql_dbg_init, vha, 0x005b,
       "Read BIOS %d.%d.\n",
       ha->bios_revision[1], ha->bios_revision[0]);
   break;
  case 128:

   ha->fcode_revision[0] = bcode[0x12];
   ha->fcode_revision[1] = bcode[0x13];
   ql_dbg(ql_dbg_init, vha, 0x005c,
       "Read FCODE %d.%d.\n",
       ha->fcode_revision[1], ha->fcode_revision[0]);
   break;
  case 129:

   ha->efi_revision[0] = bcode[0x12];
   ha->efi_revision[1] = bcode[0x13];
   ql_dbg(ql_dbg_init, vha, 0x005d,
       "Read EFI %d.%d.\n",
       ha->efi_revision[1], ha->efi_revision[0]);
   break;
  default:
   ql_log(ql_log_warn, vha, 0x005e,
       "Unrecognized code type %x at pcids %x.\n",
       code_type, pcids);
   break;
  }

  last_image = bcode[0x15] & BIT_7;


  pcihdr += ((bcode[0x11] << 8) | bcode[0x10]) * 512;
 } while (!last_image);


 memset(ha->fw_revision, 0, sizeof(ha->fw_revision));
 dcode = mbuf;

 qla24xx_read_flash_data(vha, dcode, ha->flt_region_fw + 4, 4);
 for (i = 0; i < 4; i++)
  dcode[i] = be32_to_cpu(dcode[i]);

 if ((dcode[0] == 0xffffffff && dcode[1] == 0xffffffff &&
     dcode[2] == 0xffffffff && dcode[3] == 0xffffffff) ||
     (dcode[0] == 0 && dcode[1] == 0 && dcode[2] == 0 &&
     dcode[3] == 0)) {
  ql_log(ql_log_warn, vha, 0x005f,
      "Unrecognized fw revision at %x.\n",
      ha->flt_region_fw * 4);
 } else {
  ha->fw_revision[0] = dcode[0];
  ha->fw_revision[1] = dcode[1];
  ha->fw_revision[2] = dcode[2];
  ha->fw_revision[3] = dcode[3];
  ql_dbg(ql_dbg_init, vha, 0x0060,
      "Firmware revision %d.%d.%d.%d.\n",
      ha->fw_revision[0], ha->fw_revision[1],
      ha->fw_revision[2], ha->fw_revision[3]);
 }


 if (!IS_QLA81XX(ha)) {

  return ret;
 }

 memset(ha->gold_fw_version, 0, sizeof(ha->gold_fw_version));
 dcode = mbuf;
 ha->isp_ops->read_optrom(vha, (uint8_t *)dcode,
     ha->flt_region_gold_fw << 2, 32);

 if (dcode[4] == 0xFFFFFFFF && dcode[5] == 0xFFFFFFFF &&
     dcode[6] == 0xFFFFFFFF && dcode[7] == 0xFFFFFFFF) {
  ql_log(ql_log_warn, vha, 0x0056,
      "Unrecognized golden fw at 0x%x.\n",
      ha->flt_region_gold_fw * 4);
  return ret;
 }

 for (i = 4; i < 8; i++)
  ha->gold_fw_version[i-4] = be32_to_cpu(dcode[i]);

 return ret;
}
