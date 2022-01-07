
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_target; } ;
typedef enum NCR_700_tag_neg_state { ____Placeholder_NCR_700_tag_neg_state } NCR_700_tag_neg_state ;


 int spi_flags (int ) ;

__attribute__((used)) static inline enum NCR_700_tag_neg_state
NCR_700_get_tag_neg_state(struct scsi_device *SDp)
{
 return (enum NCR_700_tag_neg_state)((spi_flags(SDp->sdev_target)>>20) & 0x3);
}
