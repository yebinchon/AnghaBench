
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int scsi_qla_host_t ;
typedef int gfp_t ;
struct TYPE_5__ {int supported_classes; int loop_id; int port_type; int * vha; } ;
typedef TYPE_1__ fc_port_t ;


 int FCS_UNCONFIGURED ;
 int FCT_UNKNOWN ;
 int FC_COS_UNSPECIFIED ;
 int FC_NO_LOOP_ID ;
 TYPE_1__* kzalloc (int,int ) ;
 int qla2x00_set_fcport_state (TYPE_1__*,int ) ;

fc_port_t *
qla2x00_alloc_fcport(scsi_qla_host_t *vha, gfp_t flags)
{
 fc_port_t *fcport;

 fcport = kzalloc(sizeof(fc_port_t), flags);
 if (!fcport)
  return ((void*)0);


 fcport->vha = vha;
 fcport->port_type = FCT_UNKNOWN;
 fcport->loop_id = FC_NO_LOOP_ID;
 qla2x00_set_fcport_state(fcport, FCS_UNCONFIGURED);
 fcport->supported_classes = FC_COS_UNSPECIFIED;

 return fcport;
}
