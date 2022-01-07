
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u_char ;
struct cyclades_port {int line; } ;


 scalar_t__ BASE_ADDR ;
 size_t CyCAR ;
 size_t CyIER ;
 unsigned char volatile CyTxMpty ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void start_xmit(struct cyclades_port *info)
{
 unsigned long flags;
 volatile unsigned char *base_addr = (u_char *) BASE_ADDR;
 int channel;

 channel = info->line;
 local_irq_save(flags);
 base_addr[CyCAR] = channel;
 base_addr[CyIER] |= CyTxMpty;
 local_irq_restore(flags);
}
