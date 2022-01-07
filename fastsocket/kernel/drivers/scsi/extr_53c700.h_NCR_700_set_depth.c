
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct NCR_700_Device_Parameters* hostdata; } ;
struct NCR_700_Device_Parameters {int depth; } ;
typedef int __u8 ;



__attribute__((used)) static inline void
NCR_700_set_depth(struct scsi_device *SDp, __u8 depth)
{
 struct NCR_700_Device_Parameters *hostdata = SDp->hostdata;

 hostdata->depth = depth;
}
