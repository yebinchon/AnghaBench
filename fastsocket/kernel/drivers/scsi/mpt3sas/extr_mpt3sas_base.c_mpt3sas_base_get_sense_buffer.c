
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct MPT3SAS_ADAPTER {scalar_t__ sense; } ;


 int SCSI_SENSE_BUFFERSIZE ;

void *
mpt3sas_base_get_sense_buffer(struct MPT3SAS_ADAPTER *ioc, u16 smid)
{
 return (void *)(ioc->sense + ((smid - 1) * SCSI_SENSE_BUFFERSIZE));
}
