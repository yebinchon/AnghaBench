
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {scalar_t__ state; int scsi_host; int cm_id; } ;


 scalar_t__ SRP_TARGET_REMOVED ;
 int WARN_ON_ONCE (int) ;
 int ib_destroy_cm_id (int ) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;
 int srp_del_scsi_host_attr (int ) ;
 int srp_disconnect_target (struct srp_target_port*) ;
 int srp_free_req_data (struct srp_target_port*) ;
 int srp_free_target_ib (struct srp_target_port*) ;
 int srp_remove_host (int ) ;

__attribute__((used)) static void srp_remove_target(struct srp_target_port *target)
{
 WARN_ON_ONCE(target->state != SRP_TARGET_REMOVED);

 srp_del_scsi_host_attr(target->scsi_host);
 srp_remove_host(target->scsi_host);
 scsi_remove_host(target->scsi_host);
 srp_disconnect_target(target);
 ib_destroy_cm_id(target->cm_id);
 srp_free_target_ib(target);
 srp_free_req_data(target);
 scsi_host_put(target->scsi_host);
}
