
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e100_serial {int line; } ;


 int DEBUG_LOG (int,char*,int) ;
 int DINTR1 (int ) ;
 unsigned int* R_IRQ_MASK1_CLR ;
 int printk (char*,int) ;

__attribute__((used)) static inline void
e100_disable_serial_tx_ready_irq(struct e100_serial *info)
{



 DINTR1(DEBUG_LOG(info->line,"IRQ disable ready_irq %i\n", info->line));
 *R_IRQ_MASK1_CLR = (1U << (8+1+2*info->line));
}
