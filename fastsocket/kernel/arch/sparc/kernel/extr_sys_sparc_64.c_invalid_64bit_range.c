
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long VA_EXCLUDE_END ;
 unsigned long VA_EXCLUDE_START ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int invalid_64bit_range(unsigned long addr, unsigned long len)
{
 unsigned long va_exclude_start, va_exclude_end;

 va_exclude_start = VA_EXCLUDE_START;
 va_exclude_end = VA_EXCLUDE_END;

 if (unlikely(len >= va_exclude_start))
  return 1;

 if (unlikely((addr + len) < addr))
  return 1;

 if (unlikely((addr >= va_exclude_start && addr < va_exclude_end) ||
       ((addr + len) >= va_exclude_start &&
        (addr + len) < va_exclude_end)))
  return 1;

 return 0;
}
