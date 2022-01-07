
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 int ENTRIES_PER_WORD ;
 scalar_t__ bitmap_word_used (void*,unsigned int) ;
 int sm_lookup_bitmap (void*,unsigned int) ;

__attribute__((used)) static int sm_find_free(void *addr, unsigned begin, unsigned end,
   unsigned *result)
{
 while (begin < end) {
  if (!(begin & (ENTRIES_PER_WORD - 1)) &&
      bitmap_word_used(addr, begin)) {
   begin += ENTRIES_PER_WORD;
   continue;
  }

  if (!sm_lookup_bitmap(addr, begin)) {
   *result = begin;
   return 0;
  }

  begin++;
 }

 return -ENOSPC;
}
