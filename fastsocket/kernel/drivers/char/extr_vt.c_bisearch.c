
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct interval {scalar_t__ first; scalar_t__ last; } ;



__attribute__((used)) static int bisearch(uint32_t ucs, const struct interval *table, int max)
{
 int min = 0;
 int mid;

 if (ucs < table[0].first || ucs > table[max].last)
  return 0;
 while (max >= min) {
  mid = (min + max) / 2;
  if (ucs > table[mid].last)
   min = mid + 1;
  else if (ucs < table[mid].first)
   max = mid - 1;
  else
   return 1;
 }
 return 0;
}
