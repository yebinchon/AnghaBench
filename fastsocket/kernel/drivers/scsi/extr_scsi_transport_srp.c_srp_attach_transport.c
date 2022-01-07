
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int match; int * class; int ** attrs; } ;
struct TYPE_6__ {TYPE_1__ ac; } ;
struct scsi_transport_template {int host_size; TYPE_2__ host_attrs; int it_nexus_response; int tsk_mgmt_response; } ;
struct srp_internal {struct scsi_transport_template t; struct srp_function_template* f; TYPE_2__ rport_attr_cont; int ** rport_attrs; int ** host_attrs; } ;
struct srp_host_attrs {int dummy; } ;
struct srp_function_template {scalar_t__ rport_delete; } ;
struct TYPE_8__ {int class; } ;
struct TYPE_7__ {int class; } ;


 int ARRAY_SIZE (int **) ;
 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int dev_attr_delete ;
 int dev_attr_port_id ;
 int dev_attr_roles ;
 struct srp_internal* kzalloc (int,int ) ;
 TYPE_4__ srp_host_class ;
 int srp_host_match ;
 int srp_it_nexus_response ;
 TYPE_3__ srp_rport_class ;
 int srp_rport_match ;
 int srp_tsk_mgmt_response ;
 int transport_container_register (TYPE_2__*) ;

struct scsi_transport_template *
srp_attach_transport(struct srp_function_template *ft)
{
 int count;
 struct srp_internal *i;

 i = kzalloc(sizeof(*i), GFP_KERNEL);
 if (!i)
  return ((void*)0);

 i->t.tsk_mgmt_response = srp_tsk_mgmt_response;
 i->t.it_nexus_response = srp_it_nexus_response;

 i->t.host_size = sizeof(struct srp_host_attrs);
 i->t.host_attrs.ac.attrs = &i->host_attrs[0];
 i->t.host_attrs.ac.class = &srp_host_class.class;
 i->t.host_attrs.ac.match = srp_host_match;
 i->host_attrs[0] = ((void*)0);
 transport_container_register(&i->t.host_attrs);

 i->rport_attr_cont.ac.attrs = &i->rport_attrs[0];
 i->rport_attr_cont.ac.class = &srp_rport_class.class;
 i->rport_attr_cont.ac.match = srp_rport_match;

 count = 0;
 i->rport_attrs[count++] = &dev_attr_port_id;
 i->rport_attrs[count++] = &dev_attr_roles;
 if (ft->rport_delete)
  i->rport_attrs[count++] = &dev_attr_delete;
 i->rport_attrs[count++] = ((void*)0);
 BUG_ON(count > ARRAY_SIZE(i->rport_attrs));

 transport_container_register(&i->rport_attr_cont);

 i->f = ft;

 return &i->t;
}
