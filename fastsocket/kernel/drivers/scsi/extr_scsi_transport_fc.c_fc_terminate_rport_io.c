
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_rport {int dev; } ;
struct fc_internal {TYPE_1__* f; } ;
struct Scsi_Host {int transportt; } ;
struct TYPE_2__ {int (* terminate_rport_io ) (struct fc_rport*) ;} ;


 int SDEV_TRANSPORT_OFFLINE ;
 int __scsi_target_unblock (int *,int ) ;
 struct Scsi_Host* rport_to_shost (struct fc_rport*) ;
 int stub1 (struct fc_rport*) ;
 struct fc_internal* to_fc_internal (int ) ;

__attribute__((used)) static void fc_terminate_rport_io(struct fc_rport *rport)
{
 struct Scsi_Host *shost = rport_to_shost(rport);
 struct fc_internal *i = to_fc_internal(shost->transportt);


 if (i->f->terminate_rport_io)
  i->f->terminate_rport_io(rport);




 __scsi_target_unblock(&rport->dev, SDEV_TRANSPORT_OFFLINE);
}
