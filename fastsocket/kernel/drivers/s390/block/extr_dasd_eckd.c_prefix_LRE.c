
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
typedef unsigned int u16 ;
struct TYPE_12__ {scalar_t__ operation; int nr_cyl; } ;
struct TYPE_13__ {int cu_type; unsigned int trk_per_cyl; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct dasd_eckd_private {int real_cyl; TYPE_5__ attrib; TYPE_6__ rdc_data; scalar_t__ uses_cdl; TYPE_2__ uid; TYPE_1__* ned; } ;
struct dasd_device {scalar_t__ private; } ;
struct ccw1 {int count; void* cda; scalar_t__ flags; int cmd_code; } ;
struct TYPE_10__ {int define_extent; int verify_base; int hyper_pav; } ;
struct LRE_eckd_data {int dummy; } ;
struct TYPE_14__ {scalar_t__ operation; int mode; } ;
struct TYPE_11__ {int perm; int auth; } ;
struct DE_eckd_data {unsigned int blk_size; int ga_extended; int end_ext; int beg_ext; TYPE_7__ attributes; TYPE_4__ mask; } ;
struct PFX_eckd_data {unsigned char format; TYPE_3__ validity; int base_lss; int base_address; struct LRE_eckd_data locate_record; struct DE_eckd_data define_extent; } ;
typedef void* __u32 ;
struct TYPE_8__ {int ID; int unit_addr; } ;


 int BUG () ;
 void* DASD_BYPASS_CACHE ;

 int DASD_ECKD_CCW_PFX ;
 scalar_t__ DASD_SEQ_ACCESS ;
 scalar_t__ DASD_SEQ_PRESTAGE ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,int) ;
 int DBF_ERR ;
 int EINVAL ;
 scalar_t__ UA_BASE_DEVICE ;
 scalar_t__ UA_HYPER_PAV_ALIAS ;
 scalar_t__ __pa (struct PFX_eckd_data*) ;
 int check_XRC_on_prefix (struct PFX_eckd_data*,struct dasd_device*) ;
 int fill_LRE_data (struct LRE_eckd_data*,unsigned int,unsigned int,int,int,struct dasd_device*,unsigned int,unsigned int) ;
 int memset (struct PFX_eckd_data*,int ,int) ;
 int set_ch_t (int *,int,unsigned int) ;

__attribute__((used)) static int prefix_LRE(struct ccw1 *ccw, struct PFX_eckd_data *pfxdata,
        unsigned int trk, unsigned int totrk, int cmd,
        struct dasd_device *basedev, struct dasd_device *startdev,
        unsigned char format, unsigned int rec_on_trk, int count,
        unsigned int blksize, unsigned int tlf)
{
 struct dasd_eckd_private *basepriv, *startpriv;
 struct DE_eckd_data *dedata;
 struct LRE_eckd_data *lredata;
 u32 begcyl, endcyl;
 u16 heads, beghead, endhead;
 int rc = 0;

 basepriv = (struct dasd_eckd_private *) basedev->private;
 startpriv = (struct dasd_eckd_private *) startdev->private;
 dedata = &pfxdata->define_extent;
 lredata = &pfxdata->locate_record;

 ccw->cmd_code = DASD_ECKD_CCW_PFX;
 ccw->flags = 0;
 if (cmd == 134) {
  ccw->count = sizeof(*pfxdata) + 2;
  ccw->cda = (__u32) __pa(pfxdata);
  memset(pfxdata, 0, sizeof(*pfxdata) + 2);
 } else {
  ccw->count = sizeof(*pfxdata);
  ccw->cda = (__u32) __pa(pfxdata);
  memset(pfxdata, 0, sizeof(*pfxdata));
 }


 if (format > 1) {
  DBF_DEV_EVENT(DBF_ERR, basedev,
         "PFX LRE unknown format 0x%x", format);
  BUG();
  return -EINVAL;
 }
 pfxdata->format = format;
 pfxdata->base_address = basepriv->ned->unit_addr;
 pfxdata->base_lss = basepriv->ned->ID;
 pfxdata->validity.define_extent = 1;


 if (startpriv->uid.type != UA_BASE_DEVICE) {
  pfxdata->validity.verify_base = 1;
  if (startpriv->uid.type == UA_HYPER_PAV_ALIAS)
   pfxdata->validity.hyper_pav = 1;
 }


 switch (cmd) {
 case 144:
 case 140:
 case 148:
 case 141:
 case 147:
 case 146:
 case 143:
 case 142:
 case 145:
  dedata->mask.perm = 0x1;
  dedata->attributes.operation = basepriv->attrib.operation;
  break;
 case 139:
 case 138:
  dedata->mask.perm = 0x1;
  dedata->attributes.operation = basepriv->attrib.operation;
  dedata->blk_size = 0;
  break;
 case 137:
 case 130:
 case 132:
 case 131:
  dedata->mask.perm = 0x02;
  dedata->attributes.operation = basepriv->attrib.operation;
  rc = check_XRC_on_prefix(pfxdata, basedev);
  break;
 case 136:
 case 135:
  dedata->attributes.operation = DASD_BYPASS_CACHE;
  rc = check_XRC_on_prefix(pfxdata, basedev);
  break;
 case 149:
 case 133:
 case 129:
  dedata->mask.perm = 0x3;
  dedata->mask.auth = 0x1;
  dedata->attributes.operation = DASD_BYPASS_CACHE;
  rc = check_XRC_on_prefix(pfxdata, basedev);
  break;
 case 134:
  dedata->mask.perm = 0x03;
  dedata->attributes.operation = basepriv->attrib.operation;
  dedata->blk_size = 0;
  break;
 case 128:
  dedata->mask.perm = 0x02;
  dedata->attributes.operation = basepriv->attrib.operation;
  dedata->blk_size = blksize;
  rc = check_XRC_on_prefix(pfxdata, basedev);
  break;
 default:
  DBF_DEV_EVENT(DBF_ERR, basedev,
       "PFX LRE unknown opcode 0x%x", cmd);
  BUG();
  return -EINVAL;
 }

 dedata->attributes.mode = 0x3;

 if ((basepriv->rdc_data.cu_type == 0x2105 ||
      basepriv->rdc_data.cu_type == 0x2107 ||
      basepriv->rdc_data.cu_type == 0x1750)
     && !(basepriv->uses_cdl && trk < 2))
  dedata->ga_extended |= 0x40;

 heads = basepriv->rdc_data.trk_per_cyl;
 begcyl = trk / heads;
 beghead = trk % heads;
 endcyl = totrk / heads;
 endhead = totrk % heads;


 if (dedata->attributes.operation == DASD_SEQ_PRESTAGE ||
     dedata->attributes.operation == DASD_SEQ_ACCESS) {

  if (endcyl + basepriv->attrib.nr_cyl < basepriv->real_cyl)
   endcyl += basepriv->attrib.nr_cyl;
  else
   endcyl = (basepriv->real_cyl - 1);
 }

 set_ch_t(&dedata->beg_ext, begcyl, beghead);
 set_ch_t(&dedata->end_ext, endcyl, endhead);

 if (format == 1) {
  fill_LRE_data(lredata, trk, rec_on_trk, count, cmd,
         basedev, blksize, tlf);
 }

 return rc;
}
