
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUCKET_ADDR (int) ;
 scalar_t__ BUCKET_EMPTY ;
 int free_locked_segment (int ) ;
 scalar_t__* sun4c_bucket ;

__attribute__((used)) static inline void garbage_collect(int entry)
{
 int start, end;


 entry &= ~31;
 start = entry;
 for (end = (start + 32); start < end; start++)
  if (sun4c_bucket[start] != BUCKET_EMPTY)
   return;


 free_locked_segment(BUCKET_ADDR(entry));
}
