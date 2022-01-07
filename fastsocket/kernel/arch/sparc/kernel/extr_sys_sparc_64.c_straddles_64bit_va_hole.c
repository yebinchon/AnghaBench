
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long VA_EXCLUDE_END ;
 unsigned long VA_EXCLUDE_START ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline int straddles_64bit_va_hole(unsigned long start, unsigned long end)
{
 unsigned long va_exclude_start, va_exclude_end;

 va_exclude_start = VA_EXCLUDE_START;
 va_exclude_end = VA_EXCLUDE_END;

 if (likely(start < va_exclude_start && end < va_exclude_start))
  return 0;

 if (likely(start >= va_exclude_end && end >= va_exclude_end))
  return 0;

 return 1;
}
