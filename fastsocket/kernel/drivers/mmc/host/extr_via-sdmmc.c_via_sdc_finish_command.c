
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via_crdr_mmc_host {TYPE_1__* cmd; int finish_tasklet; } ;
struct TYPE_2__ {int data; scalar_t__ error; } ;


 int tasklet_schedule (int *) ;
 int via_sdc_get_response (struct via_crdr_mmc_host*,TYPE_1__*) ;

__attribute__((used)) static void via_sdc_finish_command(struct via_crdr_mmc_host *host)
{
 via_sdc_get_response(host, host->cmd);

 host->cmd->error = 0;

 if (!host->cmd->data)
  tasklet_schedule(&host->finish_tasklet);

 host->cmd = ((void*)0);
}
