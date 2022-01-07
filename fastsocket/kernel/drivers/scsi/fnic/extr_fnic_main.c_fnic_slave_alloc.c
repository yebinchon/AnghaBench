
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int tagged_supported; } ;
struct fc_rport {int dummy; } ;


 int ENXIO ;
 int FNIC_DFLT_QUEUE_DEPTH ;
 scalar_t__ fc_remote_port_chkready (struct fc_rport*) ;
 int scsi_activate_tcq (struct scsi_device*,int ) ;
 int scsi_target (struct scsi_device*) ;
 struct fc_rport* starget_to_rport (int ) ;

__attribute__((used)) static int fnic_slave_alloc(struct scsi_device *sdev)
{
 struct fc_rport *rport = starget_to_rport(scsi_target(sdev));

 sdev->tagged_supported = 1;

 if (!rport || fc_remote_port_chkready(rport))
  return -ENXIO;

 scsi_activate_tcq(sdev, FNIC_DFLT_QUEUE_DEPTH);
 return 0;
}
