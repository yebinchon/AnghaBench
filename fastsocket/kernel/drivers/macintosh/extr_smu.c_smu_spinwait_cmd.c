
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_cmd {int status; } ;


 int smu_poll () ;

void smu_spinwait_cmd(struct smu_cmd *cmd)
{
 while(cmd->status == 1)
  smu_poll();
}
