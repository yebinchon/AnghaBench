
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_handle_irq (unsigned int) ;

__attribute__((used)) static void s3c_irq_demux_timer(unsigned int base_irq, unsigned int sub_irq)
{
 generic_handle_irq(sub_irq);
}
