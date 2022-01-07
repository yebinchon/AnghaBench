
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_c0_status (int) ;

__attribute__((used)) static void octeon_irq_ciu1_eoi(unsigned int irq)
{





 set_c0_status(0x100 << 3);
}
