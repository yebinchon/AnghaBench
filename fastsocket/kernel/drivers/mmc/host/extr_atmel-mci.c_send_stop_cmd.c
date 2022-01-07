
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int stop; } ;
struct atmel_mci {int stop_cmdr; } ;


 int IER ;
 int MCI_CMDRDY ;
 int atmci_start_command (struct atmel_mci*,int ,int ) ;
 int mci_writel (struct atmel_mci*,int ,int ) ;

__attribute__((used)) static void send_stop_cmd(struct atmel_mci *host, struct mmc_data *data)
{
 atmci_start_command(host, data->stop, host->stop_cmdr);
 mci_writel(host, IER, MCI_CMDRDY);
}
