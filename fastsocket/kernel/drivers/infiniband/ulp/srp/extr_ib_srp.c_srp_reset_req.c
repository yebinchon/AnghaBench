
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {int dummy; } ;
struct srp_request {int dummy; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;


 int DID_RESET ;
 struct scsi_cmnd* srp_claim_req (struct srp_target_port*,struct srp_request*,int *) ;
 int srp_free_req (struct srp_target_port*,struct srp_request*,struct scsi_cmnd*,int ) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void srp_reset_req(struct srp_target_port *target, struct srp_request *req)
{
 struct scsi_cmnd *scmnd = srp_claim_req(target, req, ((void*)0));

 if (scmnd) {
  srp_free_req(target, req, scmnd, 0);
  scmnd->result = DID_RESET << 16;
  scmnd->scsi_done(scmnd);
 }
}
