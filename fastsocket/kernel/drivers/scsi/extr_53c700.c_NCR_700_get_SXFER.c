
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int sdev_target; TYPE_1__* host; } ;
struct NCR_700_Host_Parameters {int dummy; } ;
typedef int __u8 ;
struct TYPE_2__ {scalar_t__* hostdata; } ;


 int NCR_700_offset_period_to_sxfer (struct NCR_700_Host_Parameters*,int ,int ) ;
 int spi_offset (int ) ;
 int spi_period (int ) ;

__attribute__((used)) static inline __u8
NCR_700_get_SXFER(struct scsi_device *SDp)
{
 struct NCR_700_Host_Parameters *hostdata =
  (struct NCR_700_Host_Parameters *)SDp->host->hostdata[0];

 return NCR_700_offset_period_to_sxfer(hostdata,
           spi_offset(SDp->sdev_target),
           spi_period(SDp->sdev_target));
}
