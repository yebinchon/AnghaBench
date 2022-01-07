
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3cmci_host {int mmc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dbg (struct s3cmci_host*,int ,char*) ;
 int dbg_irq ;
 int mmc_detect_change (int ,int ) ;
 int msecs_to_jiffies (int) ;

__attribute__((used)) static irqreturn_t s3cmci_irq_cd(int irq, void *dev_id)
{
 struct s3cmci_host *host = (struct s3cmci_host *)dev_id;

 dbg(host, dbg_irq, "card detect\n");

 mmc_detect_change(host->mmc, msecs_to_jiffies(500));

 return IRQ_HANDLED;
}
