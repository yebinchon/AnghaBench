
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_c0_status (int) ;

__attribute__((used)) static void octeon_irq_ciu0_ack(unsigned int irq)
{
 clear_c0_status(0x100 << 2);
}
