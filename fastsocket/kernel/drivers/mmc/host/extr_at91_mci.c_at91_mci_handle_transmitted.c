
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int blocks; } ;
struct mmc_command {struct mmc_data* data; } ;
struct at91mci_host {struct mmc_command* cmd; } ;


 int AT91_MCI_BLKE ;
 int AT91_MCI_IDR ;
 int AT91_MCI_IER ;
 int AT91_MCI_NOTBUSY ;
 int AT91_MCI_TXBUFE ;
 int ATMEL_PDC_PTCR ;
 int ATMEL_PDC_RXTDIS ;
 int ATMEL_PDC_TXTDIS ;
 int at91_mci_write (struct at91mci_host*,int ,int) ;
 int pr_debug (char*) ;

__attribute__((used)) static void at91_mci_handle_transmitted(struct at91mci_host *host)
{
 struct mmc_command *cmd;
 struct mmc_data *data;

 pr_debug("Handling the transmit\n");


 at91_mci_write(host, ATMEL_PDC_PTCR, ATMEL_PDC_RXTDIS | ATMEL_PDC_TXTDIS);


 at91_mci_write(host, AT91_MCI_IDR, AT91_MCI_TXBUFE);

 cmd = host->cmd;
 if (!cmd) return;

 data = cmd->data;
 if (!data) return;

 if (cmd->data->blocks > 1) {
  pr_debug("multiple write : wait for BLKE...\n");
  at91_mci_write(host, AT91_MCI_IER, AT91_MCI_BLKE);
 } else
  at91_mci_write(host, AT91_MCI_IER, AT91_MCI_NOTBUSY);
}
