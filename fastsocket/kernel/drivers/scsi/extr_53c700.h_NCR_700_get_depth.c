
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct NCR_700_Device_Parameters* hostdata; } ;
struct NCR_700_Device_Parameters {int depth; } ;
typedef int __u8 ;



__attribute__((used)) static inline __u8
NCR_700_get_depth(struct scsi_device *SDp)
{
 struct NCR_700_Device_Parameters *hostdata = SDp->hostdata;

 return hostdata->depth;
}
