
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dev_type; unsigned int trk_per_cyl; } ;
struct dasd_eckd_private {TYPE_2__ rdc_data; } ;
struct dasd_device {scalar_t__ private; } ;
struct TYPE_6__ {unsigned int record; int head; int cyl; } ;
struct TYPE_10__ {int head; int cyl; } ;
struct TYPE_8__ {int orientation; int operation; } ;
struct TYPE_9__ {int length_valid; } ;
struct LRE_eckd_data {int sector; int count; unsigned int length; int extended_operation; int extended_parameter_length; int* extended_parameter; TYPE_1__ search_arg; TYPE_5__ seek_addr; TYPE_3__ operation; TYPE_4__ auxiliary; } ;


 int BUG () ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,int) ;
 int DBF_ERR ;
 int ceil_quot (unsigned int,int) ;
 int memset (struct LRE_eckd_data*,int ,int) ;
 int set_ch_t (TYPE_5__*,unsigned int,unsigned int) ;

__attribute__((used)) static void fill_LRE_data(struct LRE_eckd_data *data, unsigned int trk,
     unsigned int rec_on_trk, int count, int cmd,
     struct dasd_device *device, unsigned int reclen,
     unsigned int tlf)
{
 struct dasd_eckd_private *private;
 int sector;
 int dn, d;

 private = (struct dasd_eckd_private *) device->private;

 memset(data, 0, sizeof(*data));
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




 data->count = count;
 switch (cmd) {
 case 133:
  data->operation.orientation = 0x3;
  data->operation.operation = 0x03;
  break;
 case 144:
  data->operation.orientation = 0x3;
  data->operation.operation = 0x16;
  break;
 case 129:
  data->operation.orientation = 0x1;
  data->operation.operation = 0x03;
  data->count++;
  break;
 case 140:
  data->operation.orientation = 0x3;
  data->operation.operation = 0x16;
  data->count++;
  break;
 case 137:
 case 130:
 case 132:
 case 131:
  data->auxiliary.length_valid = 0x1;
  data->length = reclen;
  data->operation.operation = 0x01;
  break;
 case 136:
 case 135:
  data->auxiliary.length_valid = 0x1;
  data->length = reclen;
  data->operation.operation = 0x03;
  break;
 case 134:
  data->operation.orientation = 0x0;
  data->operation.operation = 0x3F;
  data->extended_operation = 0x11;
  data->length = 0;
  data->extended_parameter_length = 0x02;
  if (data->count > 8) {
   data->extended_parameter[0] = 0xFF;
   data->extended_parameter[1] = 0xFF;
   data->extended_parameter[1] <<= (16 - count);
  } else {
   data->extended_parameter[0] = 0xFF;
   data->extended_parameter[0] <<= (8 - count);
   data->extended_parameter[1] = 0x00;
  }
  data->sector = 0xFF;
  break;
 case 128:
  data->auxiliary.length_valid = 0x1;
  data->length = reclen;
  data->operation.operation = 0x3F;
  data->extended_operation = 0x23;
  break;
 case 148:
 case 141:
 case 143:
 case 142:
  data->auxiliary.length_valid = 0x1;
  data->length = reclen;
  data->operation.operation = 0x06;
  break;
 case 147:
 case 146:
  data->auxiliary.length_valid = 0x1;
  data->length = reclen;
  data->operation.operation = 0x16;
  break;
 case 145:
  data->operation.operation = 0x06;
  break;
 case 139:
  data->operation.orientation = 0x1;
  data->operation.operation = 0x0C;
  data->extended_parameter_length = 0;
  data->sector = 0xFF;
  break;
 case 138:
  data->auxiliary.length_valid = 0x1;
  data->length = tlf;
  data->operation.operation = 0x0C;
  break;
 case 149:
  data->length = reclen;
  data->auxiliary.length_valid = 0x1;
  data->operation.operation = 0x0b;
  break;
 default:
  DBF_DEV_EVENT(DBF_ERR, device,
       "fill LRE unknown opcode 0x%x", cmd);
  BUG();
 }
 set_ch_t(&data->seek_addr,
   trk / private->rdc_data.trk_per_cyl,
   trk % private->rdc_data.trk_per_cyl);
 data->search_arg.cyl = data->seek_addr.cyl;
 data->search_arg.head = data->seek_addr.head;
 data->search_arg.record = rec_on_trk;
}
