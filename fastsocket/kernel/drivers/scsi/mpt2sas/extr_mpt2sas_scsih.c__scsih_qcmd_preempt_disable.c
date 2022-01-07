
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int _scsih_qcmd (struct scsi_cmnd*,void (*) (struct scsi_cmnd*)) ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static int
_scsih_qcmd_preempt_disable(struct scsi_cmnd *scmd, void (*done)(struct scsi_cmnd *))
{
 int ret;
 preempt_disable();
 ret = _scsih_qcmd(scmd, done);
 preempt_enable();
 return ret;
}
