
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct srp_rport_identifiers {scalar_t__ roles; int port_id; } ;
struct TYPE_11__ {int release; int parent; } ;
struct srp_rport {scalar_t__ roles; TYPE_1__ dev; int port_id; } ;
struct device {int dummy; } ;
struct Scsi_Host {int active_mode; int host_no; struct device shost_gendev; } ;
struct TYPE_12__ {int next_port_id; } ;


 int ENOMEM ;
 struct srp_rport* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MODE_TARGET ;
 scalar_t__ SRP_RPORT_ROLE_INITIATOR ;
 int atomic_inc_return (int *) ;
 int dev_set_name (TYPE_1__*,char*,int ,int) ;
 int device_add (TYPE_1__*) ;
 int device_del (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int get_device (struct device*) ;
 struct srp_rport* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int put_device (TYPE_1__*) ;
 int srp_rport_release ;
 int srp_tgt_it_nexus_create (struct Scsi_Host*,unsigned long,int ) ;
 TYPE_5__* to_srp_host_attrs (struct Scsi_Host*) ;
 int transport_add_device (TYPE_1__*) ;
 int transport_configure_device (TYPE_1__*) ;
 int transport_destroy_device (TYPE_1__*) ;
 int transport_setup_device (TYPE_1__*) ;

struct srp_rport *srp_rport_add(struct Scsi_Host *shost,
    struct srp_rport_identifiers *ids)
{
 struct srp_rport *rport;
 struct device *parent = &shost->shost_gendev;
 int id, ret;

 rport = kzalloc(sizeof(*rport), GFP_KERNEL);
 if (!rport)
  return ERR_PTR(-ENOMEM);

 device_initialize(&rport->dev);

 rport->dev.parent = get_device(parent);
 rport->dev.release = srp_rport_release;

 memcpy(rport->port_id, ids->port_id, sizeof(rport->port_id));
 rport->roles = ids->roles;

 id = atomic_inc_return(&to_srp_host_attrs(shost)->next_port_id);
 dev_set_name(&rport->dev, "port-%d:%d", shost->host_no, id);

 transport_setup_device(&rport->dev);

 ret = device_add(&rport->dev);
 if (ret) {
  transport_destroy_device(&rport->dev);
  put_device(&rport->dev);
  return ERR_PTR(ret);
 }

 if (shost->active_mode & MODE_TARGET &&
     ids->roles == SRP_RPORT_ROLE_INITIATOR) {
  ret = srp_tgt_it_nexus_create(shost, (unsigned long)rport,
           rport->port_id);
  if (ret) {
   device_del(&rport->dev);
   transport_destroy_device(&rport->dev);
   put_device(&rport->dev);
   return ERR_PTR(ret);
  }
 }

 transport_add_device(&rport->dev);
 transport_configure_device(&rport->dev);

 return rport;
}
