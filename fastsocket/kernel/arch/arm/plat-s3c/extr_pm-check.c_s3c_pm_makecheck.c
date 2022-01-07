
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {unsigned long start; unsigned long end; } ;


 unsigned long CHECK_CHUNKSIZE ;
 int crc32_le (int ,int ,unsigned long) ;
 int phys_to_virt (unsigned long) ;

__attribute__((used)) static u32 *s3c_pm_makecheck(struct resource *res, u32 *val)
{
 unsigned long addr, left;

 for (addr = res->start; addr < res->end;
      addr += CHECK_CHUNKSIZE) {
  left = res->end - addr;

  if (left > CHECK_CHUNKSIZE)
   left = CHECK_CHUNKSIZE;

  *val = crc32_le(~0, phys_to_virt(addr), left);
  val++;
 }

 return val;
}
