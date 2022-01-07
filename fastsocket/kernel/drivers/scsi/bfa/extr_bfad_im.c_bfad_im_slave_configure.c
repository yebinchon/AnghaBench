
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ tagged_supported; } ;


 int bfa_lun_queue_depth ;
 int scsi_activate_tcq (struct scsi_device*,int ) ;
 int scsi_deactivate_tcq (struct scsi_device*,int ) ;

__attribute__((used)) static int
bfad_im_slave_configure(struct scsi_device *sdev)
{
 if (sdev->tagged_supported)
  scsi_activate_tcq(sdev, bfa_lun_queue_depth);
 else
  scsi_deactivate_tcq(sdev, bfa_lun_queue_depth);

 return 0;
}
