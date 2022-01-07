
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_data {int flags; int bytes_xfered; int blksz; int blocks; } ;
struct at91mci_host {int total_length; TYPE_2__* request; } ;
struct TYPE_4__ {struct mmc_data* data; TYPE_1__* cmd; } ;
struct TYPE_3__ {scalar_t__ error; } ;


 int MMC_DATA_WRITE ;
 int pr_debug (char*,int,int ) ;

__attribute__((used)) static void at91_mci_update_bytes_xfered(struct at91mci_host *host)
{
 struct mmc_data *data;



 if (host->request->cmd && host->request->cmd->error != 0)
  return;

 if (host->request->data) {
  data = host->request->data;
  if (data->flags & MMC_DATA_WRITE) {

   pr_debug("-> bytes_xfered %d, total_length = %d\n",
    data->bytes_xfered, host->total_length);
   data->bytes_xfered = data->blksz * data->blocks;
  }
 }
}
