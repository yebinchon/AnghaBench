
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_table_entry {unsigned long addr; } ;



__attribute__((used)) static inline unsigned long ex_to_addr(const struct exception_table_entry *x)
{
 return (unsigned long)&x->addr + x->addr;
}
