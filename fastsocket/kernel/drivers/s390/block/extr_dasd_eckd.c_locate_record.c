
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int dev_type; unsigned int trk_per_cyl; } ;
struct dasd_eckd_private {TYPE_3__ rdc_data; } ;
struct dasd_device {scalar_t__ private; } ;
struct ccw1 {int count; scalar_t__ cda; scalar_t__ flags; int cmd_code; } ;
struct TYPE_9__ {unsigned int record; int head; int cyl; } ;
struct TYPE_10__ {int head; int cyl; } ;
struct TYPE_7__ {int orientation; int operation; } ;
struct TYPE_6__ {int last_bytes_used; } ;
struct LO_eckd_data {int sector; int count; int length; TYPE_4__ search_arg; TYPE_5__ seek_addr; TYPE_2__ operation; TYPE_1__ auxiliary; } ;
typedef scalar_t__ __u32 ;



 int DASD_ECKD_CCW_LOCATE_RECORD ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,int,...) ;
 int DBF_ERR ;
 int DBF_INFO ;
 scalar_t__ __pa (struct LO_eckd_data*) ;
 int ceil_quot (int,int) ;
 int memset (struct LO_eckd_data*,int ,int) ;
 int set_ch_t (TYPE_5__*,unsigned int,unsigned int) ;

__attribute__((used)) static void
locate_record(struct ccw1 *ccw, struct LO_eckd_data *data, unsigned int trk,
       unsigned int rec_on_trk, int no_rec, int cmd,
       struct dasd_device * device, int reclen)
{
 struct dasd_eckd_private *private;
 int sector;
 int dn, d;

 private = (struct dasd_eckd_private *) device->private;

 DBF_DEV_EVENT(DBF_INFO, device,
    "Locate: trk %d, rec %d, no_rec %d, cmd %d, reclen %d",
    trk, rec_on_trk, no_rec, cmd, reclen);

 ccw->cmd_code = DASD_ECKD_CCW_LOCATE_RECORD;
 ccw->flags = 0;
 ccw->count = 16;
 ccw->cda = (__u32) __pa(data);

 memset(data, 0, sizeof(struct LO_eckd_data));
 sector = 0;
 if (rec_on_trk) {
  switch (private->rdc_data.dev_type) {
  case 0x3390:
   dn = ceil_quot(reclen + 6, 232);
   d = 9 + ceil_quot(reclen + 6 * (dn + 1), 34);
   sector = (49 + (rec_on_trk - 1) * (10 + d)) / 8;
   break;
  case 0x3380:
   d = 7 + ceil_quot(reclen + 12, 32);
   sector = (39 + (rec_on_trk - 1) * (8 + d)) / 7;
   break;
  }
 }
 data->sector = sector;
 data->count = no_rec;
 switch (cmd) {
 case 132:
  data->operation.orientation = 0x3;
  data->operation.operation = 0x03;
  break;
 case 140:
  data->operation.orientation = 0x3;
  data->operation.operation = 0x16;
  break;
 case 128:
  data->operation.orientation = 0x1;
  data->operation.operation = 0x03;
  data->count++;
  break;
 case 136:
  data->operation.orientation = 0x3;
  data->operation.operation = 0x16;
  data->count++;
  break;
 case 135:
 case 129:
 case 131:
 case 130:
  data->auxiliary.last_bytes_used = 0x1;
  data->length = reclen;
  data->operation.operation = 0x01;
  break;
 case 134:
 case 133:
  data->auxiliary.last_bytes_used = 0x1;
  data->length = reclen;
  data->operation.operation = 0x03;
  break;
 case 144:
 case 137:
 case 139:
 case 138:
  data->auxiliary.last_bytes_used = 0x1;
  data->length = reclen;
  data->operation.operation = 0x06;
  break;
 case 143:
 case 142:
  data->auxiliary.last_bytes_used = 0x1;
  data->length = reclen;
  data->operation.operation = 0x16;
  break;
 case 141:
  data->operation.operation = 0x06;
  break;
 case 145:
  data->length = reclen;
  data->auxiliary.last_bytes_used = 0x1;
  data->operation.operation = 0x0b;
  break;
 default:
  DBF_DEV_EVENT(DBF_ERR, device, "unknown locate record "
         "opcode 0x%x", cmd);
 }
 set_ch_t(&data->seek_addr,
   trk / private->rdc_data.trk_per_cyl,
   trk % private->rdc_data.trk_per_cyl);
 data->search_arg.cyl = data->seek_addr.cyl;
 data->search_arg.head = data->seek_addr.head;
 data->search_arg.record = rec_on_trk;
}
