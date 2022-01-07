
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int scsi_deactivate_tcq (struct scsi_device*,int) ;

__attribute__((used)) static void
stex_slave_destroy(struct scsi_device *sdev)
{
 scsi_deactivate_tcq(sdev, 1);
}
