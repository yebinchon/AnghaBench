
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int reqsen ;
struct TYPE_6__ {int scsi_cmd; } ;
typedef TYPE_1__ ips_scb_t ;
typedef int ips_ha_t ;
struct TYPE_7__ {int ResponseCode; int AdditionalLength; void* AdditionalSenseCodeQual; void* AdditionalSenseCode; } ;
typedef TYPE_2__ IPS_SCSI_REQSEN ;


 int IPS_SCSI_REQSEN_CURRENT_ERR ;
 void* IPS_SCSI_REQSEN_NO_SENSE ;
 int IPS_SCSI_REQSEN_VALID ;
 int METHOD_TRACE (char*,int) ;
 int ips_scmd_buf_write (int ,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int
ips_reqsen(ips_ha_t * ha, ips_scb_t * scb)
{
 IPS_SCSI_REQSEN reqsen;

 METHOD_TRACE("ips_reqsen", 1);

 memset(&reqsen, 0, sizeof (IPS_SCSI_REQSEN));

 reqsen.ResponseCode =
     IPS_SCSI_REQSEN_VALID | IPS_SCSI_REQSEN_CURRENT_ERR;
 reqsen.AdditionalLength = 10;
 reqsen.AdditionalSenseCode = IPS_SCSI_REQSEN_NO_SENSE;
 reqsen.AdditionalSenseCodeQual = IPS_SCSI_REQSEN_NO_SENSE;

 ips_scmd_buf_write(scb->scsi_cmd, &reqsen, sizeof (reqsen));

 return (1);
}
