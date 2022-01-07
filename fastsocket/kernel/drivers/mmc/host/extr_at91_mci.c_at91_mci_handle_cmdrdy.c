
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct at91mci_host {int flags; TYPE_2__* cmd; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int flags; } ;


 int AT91_MCI_BLKE ;
 int AT91_MCI_IER ;
 int AT91_MCI_NOTBUSY ;
 int AT91_MCI_TXBUFE ;
 int ATMEL_PDC_PTCR ;
 int ATMEL_PDC_TXTEN ;
 int FL_SENT_STOP ;
 int MMC_DATA_WRITE ;
 int at91_mci_write (struct at91mci_host*,int ,int) ;

__attribute__((used)) static int at91_mci_handle_cmdrdy(struct at91mci_host *host)
{
 if (!host->cmd)
  return 1;
 else if (!host->cmd->data) {
  if (host->flags & FL_SENT_STOP) {

   at91_mci_write(host, AT91_MCI_IER, AT91_MCI_NOTBUSY);
  } else return 1;
 } else if (host->cmd->data->flags & MMC_DATA_WRITE) {

  at91_mci_write(host, AT91_MCI_IER, AT91_MCI_TXBUFE | AT91_MCI_BLKE);
  at91_mci_write(host, ATMEL_PDC_PTCR, ATMEL_PDC_TXTEN);
 }


 return 0;
}
