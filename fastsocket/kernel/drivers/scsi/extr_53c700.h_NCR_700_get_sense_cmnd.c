
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct NCR_700_Device_Parameters* hostdata; } ;
struct NCR_700_Device_Parameters {char* cmnd; } ;



__attribute__((used)) static inline char *NCR_700_get_sense_cmnd(struct scsi_device *SDp)
{
 struct NCR_700_Device_Parameters *hostdata = SDp->hostdata;

 return hostdata->cmnd;
}
