
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_transport_template {int dummy; } ;
struct TYPE_2__ {int host_attrs; } ;
struct sas_internal {int expander_attr_cont; int end_dev_attr_cont; int rphy_attr_cont; int port_attr_cont; int phy_attr_cont; TYPE_1__ t; } ;


 int kfree (struct sas_internal*) ;
 struct sas_internal* to_sas_internal (struct scsi_transport_template*) ;
 int transport_container_unregister (int *) ;

void sas_release_transport(struct scsi_transport_template *t)
{
 struct sas_internal *i = to_sas_internal(t);

 transport_container_unregister(&i->t.host_attrs);
 transport_container_unregister(&i->phy_attr_cont);
 transport_container_unregister(&i->port_attr_cont);
 transport_container_unregister(&i->rphy_attr_cont);
 transport_container_unregister(&i->end_dev_attr_cont);
 transport_container_unregister(&i->expander_attr_cont);

 kfree(i);
}
