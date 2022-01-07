
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ tagged_supported; } ;


 int MSG_SIMPLE_TAG ;
 int default_depth ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;

__attribute__((used)) static int zfcp_scsi_slave_configure(struct scsi_device *sdp)
{
 if (sdp->tagged_supported)
  scsi_adjust_queue_depth(sdp, MSG_SIMPLE_TAG, default_depth);
 else
  scsi_adjust_queue_depth(sdp, 0, 1);
 return 0;
}
