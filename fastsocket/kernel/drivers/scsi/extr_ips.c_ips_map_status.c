
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ips_stat_t ;
struct TYPE_16__ {int* sense_info; int transfer_length; } ;
struct TYPE_14__ {int op_code; } ;
struct TYPE_15__ {TYPE_2__ dcdb; } ;
struct TYPE_17__ {int basic_status; scalar_t__ extended_status; TYPE_9__* scsi_cmd; TYPE_4__ dcdb; TYPE_3__ cmd; scalar_t__ bus; int data_len; } ;
typedef TYPE_5__ ips_scb_t ;
struct TYPE_18__ {int host_num; } ;
typedef TYPE_6__ ips_ha_t ;
typedef int inquiryData ;
struct TYPE_21__ {int result; int sense_buffer; int * cmnd; TYPE_1__* device; } ;
struct TYPE_20__ {int* sense_info; int transfer_length; } ;
struct TYPE_19__ {int DeviceType; } ;
struct TYPE_13__ {int lun; int id; int channel; } ;
typedef TYPE_7__ IPS_SCSI_INQ_DATA ;
typedef TYPE_8__ IPS_DCDB_TABLE_TAPE ;


 int DEBUG_VAR (int,char*,int ,int ,int ,int ,int ,int,scalar_t__,int,int,int) ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_OK ;
 int DID_RESET ;
 int DID_TIME_OUT ;
 int INQUIRY ;

 int IPS_CMD_EXTENDED_DCDB ;
 int IPS_CMD_EXTENDED_DCDB_SG ;







 int IPS_GSC_STATUS_MASK ;





 int METHOD_TRACE (char*,int) ;
 int SCSI_SENSE_BUFFERSIZE ;
 int TYPE_DISK ;
 int ips_name ;
 int ips_scmd_buf_read (TYPE_9__*,TYPE_7__*,int) ;
 int memcpy (int ,int*,int ) ;

__attribute__((used)) static int
ips_map_status(ips_ha_t * ha, ips_scb_t * scb, ips_stat_t * sp)
{
 int errcode;
 int device_error;
 uint32_t transfer_len;
 IPS_DCDB_TABLE_TAPE *tapeDCDB;
 IPS_SCSI_INQ_DATA inquiryData;

 METHOD_TRACE("ips_map_status", 1);

 if (scb->bus) {
  DEBUG_VAR(2,
     "(%s%d) Physical device error (%d %d %d): %x %x, Sense Key: %x, ASC: %x, ASCQ: %x",
     ips_name, ha->host_num,
     scb->scsi_cmd->device->channel,
     scb->scsi_cmd->device->id, scb->scsi_cmd->device->lun,
     scb->basic_status, scb->extended_status,
     scb->extended_status ==
     138 ? scb->dcdb.sense_info[2] & 0xf : 0,
     scb->extended_status ==
     138 ? scb->dcdb.sense_info[12] : 0,
     scb->extended_status ==
     138 ? scb->dcdb.sense_info[13] : 0);
 }


 errcode = DID_ERROR;
 device_error = 0;

 switch (scb->basic_status & IPS_GSC_STATUS_MASK) {
 case 139:
  errcode = DID_TIME_OUT;
  break;

 case 131:
 case 132:
 case 130:
 case 129:
 case 140:
  break;

 case 128:
  switch (scb->extended_status) {
  case 133:
   if (scb->bus)
    errcode = DID_NO_CONNECT;

   break;

  case 135:
   if ((scb->cmd.dcdb.op_code == IPS_CMD_EXTENDED_DCDB) ||
       (scb->cmd.dcdb.op_code ==
        IPS_CMD_EXTENDED_DCDB_SG)) {
    tapeDCDB = (IPS_DCDB_TABLE_TAPE *) & scb->dcdb;
    transfer_len = tapeDCDB->transfer_length;
   } else {
    transfer_len =
        (uint32_t) scb->dcdb.transfer_length;
   }

   if ((scb->bus) && (transfer_len < scb->data_len)) {

    errcode = DID_OK;


    if (scb->scsi_cmd->cmnd[0] == INQUIRY) {
        ips_scmd_buf_read(scb->scsi_cmd,
                                      &inquiryData, sizeof (inquiryData));
         if ((inquiryData.DeviceType & 0x1f) == TYPE_DISK) {
            errcode = DID_TIME_OUT;
            break;
        }
    }
   } else
    errcode = DID_ERROR;

   break;

  case 134:

   if (scb->bus)
    errcode = DID_OK;

   break;

  case 136:
  case 137:
   errcode = DID_RESET;
   break;

  case 138:
   if (scb->bus) {
    if ((scb->cmd.dcdb.op_code ==
         IPS_CMD_EXTENDED_DCDB)
        || (scb->cmd.dcdb.op_code ==
     IPS_CMD_EXTENDED_DCDB_SG)) {
     tapeDCDB =
         (IPS_DCDB_TABLE_TAPE *) & scb->dcdb;
     memcpy(scb->scsi_cmd->sense_buffer,
            tapeDCDB->sense_info,
            SCSI_SENSE_BUFFERSIZE);
    } else {
     memcpy(scb->scsi_cmd->sense_buffer,
            scb->dcdb.sense_info,
            SCSI_SENSE_BUFFERSIZE);
    }
    device_error = 2;
   }

   errcode = DID_OK;

   break;

  default:
   errcode = DID_ERROR;
   break;

  }
 }

 scb->scsi_cmd->result = device_error | (errcode << 16);

 return (1);
}
