
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int host_attrs; } ;
struct srp_internal {int rport_attr_cont; TYPE_1__ t; } ;
struct scsi_transport_template {int dummy; } ;


 int kfree (struct srp_internal*) ;
 struct srp_internal* to_srp_internal (struct scsi_transport_template*) ;
 int transport_container_unregister (int *) ;

void srp_release_transport(struct scsi_transport_template *t)
{
 struct srp_internal *i = to_srp_internal(t);

 transport_container_unregister(&i->t.host_attrs);
 transport_container_unregister(&i->rport_attr_cont);

 kfree(i);
}
