
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 unsigned long PM_PFRAME (int) ;
 int PM_PRESENT ;

__attribute__((used)) static unsigned long pagemap_pfn(uint64_t val)
{
 unsigned long pfn;

 if (val & PM_PRESENT)
  pfn = PM_PFRAME(val);
 else
  pfn = 0;

 return pfn;
}
