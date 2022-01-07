
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srb {int * wait; } ;
struct scsi_qla_host {int dummy; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int _qla1280_wait_for_single_command (struct scsi_qla_host*,struct srb*,int *) ;
 int wait ;

__attribute__((used)) static int
qla1280_wait_for_single_command(struct scsi_qla_host *ha, struct srb *sp)
{
 DECLARE_COMPLETION_ONSTACK(wait);

 sp->wait = &wait;
 return _qla1280_wait_for_single_command(ha, sp, &wait);
}
