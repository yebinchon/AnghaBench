
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long bitcnt; int count; int vector; } ;


 unsigned long PAGE_SHIFT ;
 int atomic_inc (int *) ;
 TYPE_1__ mm_tracking_struct ;
 int test_and_set_bit (unsigned long,int ) ;

void do_mm_track_phys(void *val)
{
 unsigned long pfn;

 pfn = (unsigned long)val >> PAGE_SHIFT;

 if (pfn >= mm_tracking_struct.bitcnt)
  return;

 if (!test_and_set_bit(pfn, mm_tracking_struct.vector))
  atomic_inc(&mm_tracking_struct.count);
}
