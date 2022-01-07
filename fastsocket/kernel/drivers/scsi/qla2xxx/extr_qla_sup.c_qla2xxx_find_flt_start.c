
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct req_que {scalar_t__ ring; } ;
struct qla_hw_data {struct req_que** req_q_map; } ;
struct qla_flt_location {char* sig; int start_lo; int start_hi; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int BIT_7 ;
 int FA_FLASH_LAYOUT_ADDR ;
 int FA_FLASH_LAYOUT_ADDR_24 ;
 int FA_FLASH_LAYOUT_ADDR_81 ;
 int FA_FLASH_LAYOUT_ADDR_82 ;
 int FA_FLASH_LAYOUT_ADDR_83 ;
 scalar_t__ IS_QLA24XX_TYPE (struct qla_hw_data*) ;
 scalar_t__ IS_QLA25XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA81XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA83XX (struct qla_hw_data*) ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int le16_to_cpu (int ) ;
 int ql_dbg (scalar_t__,TYPE_1__*,int,char*,char const*,int) ;
 scalar_t__ ql_dbg_buffer ;
 scalar_t__ ql_dbg_init ;
 int ql_dump_buffer (scalar_t__,TYPE_1__*,int,int*,int) ;
 int ql_log (int ,TYPE_1__*,int,char*,int) ;
 int ql_log_fatal ;
 int qla24xx_read_flash_data (TYPE_1__*,int*,int,int) ;

__attribute__((used)) static int
qla2xxx_find_flt_start(scsi_qla_host_t *vha, uint32_t *start)
{
 const char *loc, *locations[] = { "DEF", "PCI" };
 uint32_t pcihdr, pcids;
 uint32_t *dcode;
 uint8_t *buf, *bcode, last_image;
 uint16_t cnt, chksum, *wptr;
 struct qla_flt_location *fltl;
 struct qla_hw_data *ha = vha->hw;
 struct req_que *req = ha->req_q_map[0];






 loc = locations[0];
 *start = 0;
 if (IS_QLA24XX_TYPE(ha))
  *start = FA_FLASH_LAYOUT_ADDR_24;
 else if (IS_QLA25XX(ha))
  *start = FA_FLASH_LAYOUT_ADDR;
 else if (IS_QLA81XX(ha))
  *start = FA_FLASH_LAYOUT_ADDR_81;
 else if (IS_QLA82XX(ha)) {
  *start = FA_FLASH_LAYOUT_ADDR_82;
  goto end;
 } else if (IS_QLA83XX(ha)) {
  *start = FA_FLASH_LAYOUT_ADDR_83;
  goto end;
 }

 buf = (uint8_t *)req->ring;
 dcode = (uint32_t *)req->ring;
 pcihdr = 0;
 last_image = 1;
 do {

  qla24xx_read_flash_data(vha, dcode, pcihdr >> 2, 0x20);
  bcode = buf + (pcihdr % 4);
  if (bcode[0x0] != 0x55 || bcode[0x1] != 0xaa)
   goto end;


  pcids = pcihdr + ((bcode[0x19] << 8) | bcode[0x18]);
  qla24xx_read_flash_data(vha, dcode, pcids >> 2, 0x20);
  bcode = buf + (pcihdr % 4);


  if (bcode[0x0] != 'P' || bcode[0x1] != 'C' ||
      bcode[0x2] != 'I' || bcode[0x3] != 'R')
   goto end;

  last_image = bcode[0x15] & BIT_7;


  pcihdr += ((bcode[0x11] << 8) | bcode[0x10]) * 512;
 } while (!last_image);


 fltl = (struct qla_flt_location *)req->ring;
 qla24xx_read_flash_data(vha, dcode, pcihdr >> 2,
     sizeof(struct qla_flt_location) >> 2);
 if (fltl->sig[0] != 'Q' || fltl->sig[1] != 'F' ||
     fltl->sig[2] != 'L' || fltl->sig[3] != 'T')
  goto end;

 wptr = (uint16_t *)req->ring;
 cnt = sizeof(struct qla_flt_location) >> 1;
 for (chksum = 0; cnt; cnt--)
  chksum += le16_to_cpu(*wptr++);
 if (chksum) {
  ql_log(ql_log_fatal, vha, 0x0045,
      "Inconsistent FLTL detected: checksum=0x%x.\n", chksum);
  ql_dump_buffer(ql_dbg_init + ql_dbg_buffer, vha, 0x010e,
      buf, sizeof(struct qla_flt_location));
  return QLA_FUNCTION_FAILED;
 }


 loc = locations[1];
 *start = (le16_to_cpu(fltl->start_hi) << 16 |
     le16_to_cpu(fltl->start_lo)) >> 2;
end:
 ql_dbg(ql_dbg_init, vha, 0x0046,
     "FLTL[%s] = 0x%x.\n",
     loc, *start);
 return QLA_SUCCESS;
}
