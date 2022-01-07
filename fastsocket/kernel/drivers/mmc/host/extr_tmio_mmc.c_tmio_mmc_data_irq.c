
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {struct mmc_data* data; } ;
struct mmc_data {int bytes_xfered; int blocks; int blksz; int flags; int error; struct mmc_command* stop; } ;
struct mmc_command {int opcode; int arg; } ;


 int BUG () ;
 int CTL_STOP_INTERNAL_ACTION ;
 int MMC_DATA_READ ;
 int TMIO_MASK_READOP ;
 int TMIO_MASK_WRITEOP ;
 int disable_mmc_irqs (struct tmio_mmc_host*,int ) ;
 int pr_debug (char*) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;
 int tmio_mmc_finish_request (struct tmio_mmc_host*) ;

__attribute__((used)) static inline void tmio_mmc_data_irq(struct tmio_mmc_host *host)
{
 struct mmc_data *data = host->data;
 struct mmc_command *stop;

 host->data = ((void*)0);

 if (!data) {
  pr_debug("Spurious data end IRQ\n");
  return;
 }
 stop = data->stop;


 if (!data->error)
  data->bytes_xfered = data->blocks * data->blksz;
 else
  data->bytes_xfered = 0;

 pr_debug("Completed data request\n");
 if (data->flags & MMC_DATA_READ)
  disable_mmc_irqs(host, TMIO_MASK_READOP);
 else
  disable_mmc_irqs(host, TMIO_MASK_WRITEOP);

 if (stop) {
  if (stop->opcode == 12 && !stop->arg)
   sd_ctrl_write16(host, CTL_STOP_INTERNAL_ACTION, 0x000);
  else
   BUG();
 }

 tmio_mmc_finish_request(host);
}
