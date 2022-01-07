
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lguest {unsigned long pfn_limit; } ;


 unsigned long PAGE_SIZE ;

bool lguest_address_ok(const struct lguest *lg,
         unsigned long addr, unsigned long len)
{
 return (addr+len) / PAGE_SIZE < lg->pfn_limit && (addr+len >= addr);
}
