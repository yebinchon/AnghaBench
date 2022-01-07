
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_transport_template {int dummy; } ;
struct TYPE_2__ {int host_attrs; int target_attrs; } ;
struct fc_internal {int vport_attr_cont; int rport_attr_cont; TYPE_1__ t; } ;


 int kfree (struct fc_internal*) ;
 struct fc_internal* to_fc_internal (struct scsi_transport_template*) ;
 int transport_container_unregister (int *) ;

void fc_release_transport(struct scsi_transport_template *t)
{
 struct fc_internal *i = to_fc_internal(t);

 transport_container_unregister(&i->t.target_attrs);
 transport_container_unregister(&i->t.host_attrs);
 transport_container_unregister(&i->rport_attr_cont);
 transport_container_unregister(&i->vport_attr_cont);

 kfree(i);
}
