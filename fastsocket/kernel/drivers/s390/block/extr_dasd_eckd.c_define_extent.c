
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef unsigned int u16 ;
struct TYPE_10__ {scalar_t__ operation; int nr_cyl; } ;
struct TYPE_8__ {int cu_type; unsigned int trk_per_cyl; } ;
struct dasd_eckd_private {int real_cyl; TYPE_5__ attrib; TYPE_3__ rdc_data; scalar_t__ uses_cdl; } ;
struct dasd_device {TYPE_2__* cdev; scalar_t__ private; } ;
struct ccw1 {int count; scalar_t__ cda; scalar_t__ flags; int cmd_code; } ;
struct TYPE_9__ {scalar_t__ operation; int mode; } ;
struct TYPE_6__ {int perm; int auth; } ;
struct DE_eckd_data {int ga_extended; int end_ext; int beg_ext; TYPE_4__ attributes; TYPE_1__ mask; } ;
typedef scalar_t__ __u32 ;
struct TYPE_7__ {int dev; } ;


 void* DASD_BYPASS_CACHE ;
 int DASD_ECKD_CCW_DEFINE_EXTENT ;
 scalar_t__ DASD_SEQ_ACCESS ;
 scalar_t__ DASD_SEQ_PRESTAGE ;
 scalar_t__ __pa (struct DE_eckd_data*) ;
 int check_XRC (struct ccw1*,struct DE_eckd_data*,struct dasd_device*) ;
 int dev_err (int *,char*,int) ;
 int memset (struct DE_eckd_data*,int ,int) ;
 int set_ch_t (int *,int,unsigned int) ;

__attribute__((used)) static int
define_extent(struct ccw1 *ccw, struct DE_eckd_data *data, unsigned int trk,
       unsigned int totrk, int cmd, struct dasd_device *device)
{
 struct dasd_eckd_private *private;
 u32 begcyl, endcyl;
 u16 heads, beghead, endhead;
 int rc = 0;

 private = (struct dasd_eckd_private *) device->private;

 ccw->cmd_code = DASD_ECKD_CCW_DEFINE_EXTENT;
 ccw->flags = 0;
 ccw->count = 16;
 ccw->cda = (__u32) __pa(data);

 memset(data, 0, sizeof(struct DE_eckd_data));
 switch (cmd) {
 case 140:
 case 136:
 case 144:
 case 137:
 case 143:
 case 142:
 case 139:
 case 138:
 case 141:
  data->mask.perm = 0x1;
  data->attributes.operation = private->attrib.operation;
  break;
 case 135:
 case 129:
 case 131:
 case 130:
  data->mask.perm = 0x02;
  data->attributes.operation = private->attrib.operation;
  rc = check_XRC (ccw, data, device);
  break;
 case 134:
 case 133:
  data->attributes.operation = DASD_BYPASS_CACHE;
  rc = check_XRC (ccw, data, device);
  break;
 case 145:
 case 132:
 case 128:
  data->mask.perm = 0x3;
  data->mask.auth = 0x1;
  data->attributes.operation = DASD_BYPASS_CACHE;
  rc = check_XRC (ccw, data, device);
  break;
 default:
  dev_err(&device->cdev->dev,
   "0x%x is not a known command\n", cmd);
  break;
 }

 data->attributes.mode = 0x3;

 if ((private->rdc_data.cu_type == 0x2105 ||
      private->rdc_data.cu_type == 0x2107 ||
      private->rdc_data.cu_type == 0x1750)
     && !(private->uses_cdl && trk < 2))
  data->ga_extended |= 0x40;

 heads = private->rdc_data.trk_per_cyl;
 begcyl = trk / heads;
 beghead = trk % heads;
 endcyl = totrk / heads;
 endhead = totrk % heads;


 if (data->attributes.operation == DASD_SEQ_PRESTAGE ||
     data->attributes.operation == DASD_SEQ_ACCESS) {

  if (endcyl + private->attrib.nr_cyl < private->real_cyl)
   endcyl += private->attrib.nr_cyl;
  else
   endcyl = (private->real_cyl - 1);
 }

 set_ch_t(&data->beg_ext, begcyl, beghead);
 set_ch_t(&data->end_ext, endcyl, endhead);
 return rc;
}
