
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_dev_info {int stopped; } ;
struct scsi_cmnd {scalar_t__ cmnd; } ;


 int ILLEGAL_REQUEST ;
 int INVALID_FIELD_IN_CDB ;
 int check_condition_result ;
 int check_readiness (struct scsi_cmnd*,int,struct sdebug_dev_info*) ;
 int mk_sense_buffer (struct sdebug_dev_info*,int ,int ,int ) ;

__attribute__((used)) static int resp_start_stop(struct scsi_cmnd * scp,
      struct sdebug_dev_info * devip)
{
 unsigned char *cmd = (unsigned char *)scp->cmnd;
 int power_cond, errsts, start;

 if ((errsts = check_readiness(scp, 1, devip)))
  return errsts;
 power_cond = (cmd[4] & 0xf0) >> 4;
 if (power_cond) {
  mk_sense_buffer(devip, ILLEGAL_REQUEST, INVALID_FIELD_IN_CDB,
           0);
  return check_condition_result;
 }
 start = cmd[4] & 1;
 if (start == devip->stopped)
  devip->stopped = !start;
 return 0;
}
