
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_target; } ;
typedef int __u32 ;


 int spi_flags (int ) ;

__attribute__((used)) static inline int
NCR_700_is_flag_clear(struct scsi_device *SDp, __u32 flag)
{
 return (spi_flags(SDp->sdev_target) & flag) == 0;
}
