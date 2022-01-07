
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reply_len; } ;
struct smu_i2c_cmd {int* pdata; TYPE_1__ scmd; } ;
struct TYPE_4__ {struct smu_i2c_cmd* cmd_i2c_cur; } ;


 int DPRINTK (char*) ;
 TYPE_2__* smu ;
 int smu_queue_cmd (TYPE_1__*) ;

__attribute__((used)) static void smu_i2c_retry(unsigned long data)
{
 struct smu_i2c_cmd *cmd = smu->cmd_i2c_cur;

 DPRINTK("SMU: i2c failure, requeuing...\n");


 cmd->pdata[0] = 0xff;
 cmd->scmd.reply_len = sizeof(cmd->pdata);
 smu_queue_cmd(&cmd->scmd);
}
