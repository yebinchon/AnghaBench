
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int scsi_cmd; } ;
typedef TYPE_1__ ips_scb_t ;
typedef int ips_ha_t ;
typedef int inquiry ;
struct TYPE_7__ {int AdditionalLength; int* Flags; int ProductRevisionLevel; int ProductId; int VendorId; int ResponseDataFormat; int Version; int DeviceTypeQualifier; int DeviceType; } ;
typedef TYPE_2__ IPS_SCSI_INQ_DATA ;


 int IPS_SCSI_INQ_Address16 ;
 int IPS_SCSI_INQ_CmdQue ;
 int IPS_SCSI_INQ_LU_CONNECTED ;
 int IPS_SCSI_INQ_RD_REV2 ;
 int IPS_SCSI_INQ_REV2 ;
 int IPS_SCSI_INQ_Sync ;
 int IPS_SCSI_INQ_TYPE_DASD ;
 int IPS_SCSI_INQ_WBus16 ;
 int METHOD_TRACE (char*,int) ;
 int ips_scmd_buf_write (int ,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int
ips_inquiry(ips_ha_t * ha, ips_scb_t * scb)
{
 IPS_SCSI_INQ_DATA inquiry;

 METHOD_TRACE("ips_inquiry", 1);

 memset(&inquiry, 0, sizeof (IPS_SCSI_INQ_DATA));

 inquiry.DeviceType = IPS_SCSI_INQ_TYPE_DASD;
 inquiry.DeviceTypeQualifier = IPS_SCSI_INQ_LU_CONNECTED;
 inquiry.Version = IPS_SCSI_INQ_REV2;
 inquiry.ResponseDataFormat = IPS_SCSI_INQ_RD_REV2;
 inquiry.AdditionalLength = 31;
 inquiry.Flags[0] = IPS_SCSI_INQ_Address16;
 inquiry.Flags[1] =
     IPS_SCSI_INQ_WBus16 | IPS_SCSI_INQ_Sync | IPS_SCSI_INQ_CmdQue;
 strncpy(inquiry.VendorId, "IBM     ", 8);
 strncpy(inquiry.ProductId, "SERVERAID       ", 16);
 strncpy(inquiry.ProductRevisionLevel, "1.00", 4);

 ips_scmd_buf_write(scb->scsi_cmd, &inquiry, sizeof (inquiry));

 return (1);
}
