
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TICKCMP_IRQ_BIT ;
 int __hbird_write_compare (int ) ;

__attribute__((used)) static void hbtick_disable_irq(void)
{
 __hbird_write_compare(TICKCMP_IRQ_BIT);
}
