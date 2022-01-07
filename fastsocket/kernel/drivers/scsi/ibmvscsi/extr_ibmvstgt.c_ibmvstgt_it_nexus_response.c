
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vio_port {int * rport; } ;
struct srp_target {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int eprintk (char*,struct Scsi_Host*,int) ;
 struct srp_target* host_to_srp_target (struct Scsi_Host*) ;
 int srp_rport_del (int *) ;
 struct vio_port* target_to_port (struct srp_target*) ;

__attribute__((used)) static int ibmvstgt_it_nexus_response(struct Scsi_Host *shost, u64 itn_id,
          int result)
{
 struct srp_target *target = host_to_srp_target(shost);
 struct vio_port *vport = target_to_port(target);

 if (result) {
  eprintk("%p %d\n", shost, result);
  srp_rport_del(vport->rport);
  vport->rport = ((void*)0);
 }
 return 0;
}
