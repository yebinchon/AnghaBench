
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_mci {int dummy; } ;


 int EVENT_XFER_COMPLETE ;
 int IER ;
 int MCI_NOTBUSY ;
 int atmci_set_pending (struct atmel_mci*,int ) ;
 int mci_writel (struct atmel_mci*,int ,int ) ;

__attribute__((used)) static void atmci_stop_dma(struct atmel_mci *host)
{

 atmci_set_pending(host, EVENT_XFER_COMPLETE);
 mci_writel(host, IER, MCI_NOTBUSY);
}
