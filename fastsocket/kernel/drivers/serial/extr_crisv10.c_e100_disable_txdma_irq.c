
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e100_serial {int irq; int line; } ;


 int DEBUG_LOG (int ,char*,int ) ;
 int DINTR1 (int ) ;
 int * R_IRQ_MASK2_CLR ;
 int printk (char*,int ) ;

__attribute__((used)) static void e100_disable_txdma_irq(struct e100_serial *info)
{



 DINTR1(DEBUG_LOG(info->line,"IRQ disable_txdma_irq %i\n", info->line));
 *R_IRQ_MASK2_CLR = info->irq;
}
