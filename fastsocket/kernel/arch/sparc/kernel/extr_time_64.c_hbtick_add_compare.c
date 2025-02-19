
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long TICKCMP_IRQ_BIT ;
 unsigned long __hbird_read_stick () ;
 int __hbird_write_compare (unsigned long) ;

__attribute__((used)) static int hbtick_add_compare(unsigned long adj)
{
 unsigned long val = __hbird_read_stick();
 unsigned long val2;

 val &= ~TICKCMP_IRQ_BIT;
 val += adj;
 __hbird_write_compare(val);

 val2 = __hbird_read_stick() & ~TICKCMP_IRQ_BIT;

 return ((long)(val2 - val)) > 0L;
}
