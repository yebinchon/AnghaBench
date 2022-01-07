
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ tagged_supported; } ;
struct fc_rport {int dummy; } ;


 int ENXIO ;
 int FC_FCP_DFLT_QUEUE_DEPTH ;
 scalar_t__ fc_remote_port_chkready (struct fc_rport*) ;
 int scsi_activate_tcq (struct scsi_device*,int ) ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int ) ;
 int scsi_get_tag_type (struct scsi_device*) ;
 int scsi_target (struct scsi_device*) ;
 struct fc_rport* starget_to_rport (int ) ;

int fc_slave_alloc(struct scsi_device *sdev)
{
 struct fc_rport *rport = starget_to_rport(scsi_target(sdev));

 if (!rport || fc_remote_port_chkready(rport))
  return -ENXIO;

 if (sdev->tagged_supported)
  scsi_activate_tcq(sdev, FC_FCP_DFLT_QUEUE_DEPTH);
 else
  scsi_adjust_queue_depth(sdev, scsi_get_tag_type(sdev),
     FC_FCP_DFLT_QUEUE_DEPTH);

 return 0;
}
