
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e100_serial {int line; } ;


 int DEBUG_LOG (int,char*,int) ;
 int DINTR2 (int ) ;
 unsigned int* R_IRQ_MASK1_SET ;
 int printk (char*,int,...) ;

__attribute__((used)) static inline void
e100_enable_serial_tx_ready_irq(struct e100_serial *info)
{






 DINTR2(DEBUG_LOG(info->line,"IRQ enable ready_irq %i\n", info->line));
 *R_IRQ_MASK1_SET = (1U << (8+1+2*info->line));
}
