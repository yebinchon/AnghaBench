
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;
struct srp_rport {scalar_t__ roles; struct device dev; } ;
struct Scsi_Host {int active_mode; } ;


 int MODE_TARGET ;
 scalar_t__ SRP_RPORT_ROLE_INITIATOR ;
 struct Scsi_Host* dev_to_shost (int ) ;
 int device_del (struct device*) ;
 int put_device (struct device*) ;
 int srp_tgt_it_nexus_destroy (struct Scsi_Host*,unsigned long) ;
 int transport_destroy_device (struct device*) ;
 int transport_remove_device (struct device*) ;

void srp_rport_del(struct srp_rport *rport)
{
 struct device *dev = &rport->dev;
 struct Scsi_Host *shost = dev_to_shost(dev->parent);

 if (shost->active_mode & MODE_TARGET &&
     rport->roles == SRP_RPORT_ROLE_INITIATOR)
  srp_tgt_it_nexus_destroy(shost, (unsigned long)rport);

 transport_remove_device(dev);
 device_del(dev);
 transport_destroy_device(dev);
 put_device(dev);
}
