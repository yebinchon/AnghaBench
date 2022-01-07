
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* cdb; } ;
struct sas_task {TYPE_1__ ssp_task; } ;


 scalar_t__ READ_10 ;
 scalar_t__ WRITE_10 ;
 scalar_t__ WRITE_VERIFY ;

__attribute__((used)) static int check_enc_sas_cmd(struct sas_task *task)
{
 if ((task->ssp_task.cdb[0] == READ_10)
  || (task->ssp_task.cdb[0] == WRITE_10)
  || (task->ssp_task.cdb[0] == WRITE_VERIFY))
  return 1;
 else
  return 0;
}
