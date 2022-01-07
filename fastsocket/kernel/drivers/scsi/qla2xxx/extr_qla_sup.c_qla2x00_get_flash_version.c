
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct qla_hw_data {int* bios_revision; int* efi_revision; int* fcode_revision; int* fw_revision; int flt_region_fw; int pio_address; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int BIT_7 ;
 scalar_t__ IS_QLA2322 (struct qla_hw_data*) ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;



 int memset (int*,int ,int) ;
 int ql_dbg (scalar_t__,TYPE_1__*,int,char*,...) ;
 scalar_t__ ql_dbg_buffer ;
 scalar_t__ ql_dbg_init ;
 int ql_dump_buffer (scalar_t__,TYPE_1__*,int,int*,int) ;
 int ql_log (int ,TYPE_1__*,int,char*,...) ;
 int ql_log_fatal ;
 int ql_log_warn ;
 int qla2x00_flash_disable (struct qla_hw_data*) ;
 int qla2x00_flash_enable (struct qla_hw_data*) ;
 int qla2x00_get_fcode_version (struct qla_hw_data*,int) ;
 int qla2x00_read_flash_byte (struct qla_hw_data*,int) ;
 int qla2x00_read_flash_data (struct qla_hw_data*,int*,int,int) ;

int
qla2x00_get_flash_version(scsi_qla_host_t *vha, void *mbuf)
{
 int ret = QLA_SUCCESS;
 uint8_t code_type, last_image;
 uint32_t pcihdr, pcids;
 uint8_t *dbyte;
 uint16_t *dcode;
 struct qla_hw_data *ha = vha->hw;

 if (!ha->pio_address || !mbuf)
  return QLA_FUNCTION_FAILED;

 memset(ha->bios_revision, 0, sizeof(ha->bios_revision));
 memset(ha->efi_revision, 0, sizeof(ha->efi_revision));
 memset(ha->fcode_revision, 0, sizeof(ha->fcode_revision));
 memset(ha->fw_revision, 0, sizeof(ha->fw_revision));

 qla2x00_flash_enable(ha);


 pcihdr = 0;
 last_image = 1;
 do {

  if (qla2x00_read_flash_byte(ha, pcihdr) != 0x55 ||
      qla2x00_read_flash_byte(ha, pcihdr + 0x01) != 0xaa) {

   ql_log(ql_log_fatal, vha, 0x0050,
       "No matching ROM signature.\n");
   ret = QLA_FUNCTION_FAILED;
   break;
  }


  pcids = pcihdr +
      ((qla2x00_read_flash_byte(ha, pcihdr + 0x19) << 8) |
   qla2x00_read_flash_byte(ha, pcihdr + 0x18));


  if (qla2x00_read_flash_byte(ha, pcids) != 'P' ||
      qla2x00_read_flash_byte(ha, pcids + 0x1) != 'C' ||
      qla2x00_read_flash_byte(ha, pcids + 0x2) != 'I' ||
      qla2x00_read_flash_byte(ha, pcids + 0x3) != 'R') {

   ql_log(ql_log_fatal, vha, 0x0051,
       "PCI data struct not found pcir_adr=%x.\n", pcids);
   ret = QLA_FUNCTION_FAILED;
   break;
  }


  code_type = qla2x00_read_flash_byte(ha, pcids + 0x14);
  switch (code_type) {
  case 130:

   ha->bios_revision[0] =
       qla2x00_read_flash_byte(ha, pcids + 0x12);
   ha->bios_revision[1] =
       qla2x00_read_flash_byte(ha, pcids + 0x13);
   ql_dbg(ql_dbg_init, vha, 0x0052,
       "Read BIOS %d.%d.\n",
       ha->bios_revision[1], ha->bios_revision[0]);
   break;
  case 128:


   qla2x00_get_fcode_version(ha, pcids);
   break;
  case 129:

   ha->efi_revision[0] =
       qla2x00_read_flash_byte(ha, pcids + 0x12);
   ha->efi_revision[1] =
       qla2x00_read_flash_byte(ha, pcids + 0x13);
   ql_dbg(ql_dbg_init, vha, 0x0053,
       "Read EFI %d.%d.\n",
       ha->efi_revision[1], ha->efi_revision[0]);
   break;
  default:
   ql_log(ql_log_warn, vha, 0x0054,
       "Unrecognized code type %x at pcids %x.\n",
       code_type, pcids);
   break;
  }

  last_image = qla2x00_read_flash_byte(ha, pcids + 0x15) & BIT_7;


  pcihdr += ((qla2x00_read_flash_byte(ha, pcids + 0x11) << 8) |
      qla2x00_read_flash_byte(ha, pcids + 0x10)) * 512;
 } while (!last_image);

 if (IS_QLA2322(ha)) {

  memset(ha->fw_revision, 0, sizeof(ha->fw_revision));
  dbyte = mbuf;
  memset(dbyte, 0, 8);
  dcode = (uint16_t *)dbyte;

  qla2x00_read_flash_data(ha, dbyte, ha->flt_region_fw * 4 + 10,
      8);
  ql_dbg(ql_dbg_init + ql_dbg_buffer, vha, 0x010a,
      "Dumping fw "
      "ver from flash:.\n");
  ql_dump_buffer(ql_dbg_init + ql_dbg_buffer, vha, 0x010b,
      (uint8_t *)dbyte, 8);

  if ((dcode[0] == 0xffff && dcode[1] == 0xffff &&
      dcode[2] == 0xffff && dcode[3] == 0xffff) ||
      (dcode[0] == 0 && dcode[1] == 0 && dcode[2] == 0 &&
      dcode[3] == 0)) {
   ql_log(ql_log_warn, vha, 0x0057,
       "Unrecognized fw revision at %x.\n",
       ha->flt_region_fw * 4);
  } else {

   ha->fw_revision[0] = dbyte[0] << 16 | dbyte[1];
   ha->fw_revision[1] = dbyte[2] << 16 | dbyte[3];
   ha->fw_revision[2] = dbyte[4] << 16 | dbyte[5];
   ql_dbg(ql_dbg_init, vha, 0x0058,
       "FW Version: "
       "%d.%d.%d.\n", ha->fw_revision[0],
       ha->fw_revision[1], ha->fw_revision[2]);
  }
 }

 qla2x00_flash_disable(ha);

 return ret;
}
