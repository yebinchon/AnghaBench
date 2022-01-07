
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_arena {unsigned long limit; unsigned long hint; int map; } ;
struct ldc_iommu {struct iommu_arena arena; } ;


 int __set_bit (unsigned long,int ) ;
 unsigned long find_next_zero_bit (int ,unsigned long,unsigned long) ;
 scalar_t__ likely (int) ;
 scalar_t__ test_bit (unsigned long,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static long arena_alloc(struct ldc_iommu *iommu, unsigned long npages)
{
 struct iommu_arena *arena = &iommu->arena;
 unsigned long n, i, start, end, limit;
 int pass;

 limit = arena->limit;
 start = arena->hint;
 pass = 0;

again:
 n = find_next_zero_bit(arena->map, limit, start);
 end = n + npages;
 if (unlikely(end >= limit)) {
  if (likely(pass < 1)) {
   limit = start;
   start = 0;
   pass++;
   goto again;
  } else {

   return -1;
  }
 }

 for (i = n; i < end; i++) {
  if (test_bit(i, arena->map)) {
   start = i + 1;
   goto again;
  }
 }

 for (i = n; i < end; i++)
  __set_bit(i, arena->map);

 arena->hint = end;

 return n;
}
