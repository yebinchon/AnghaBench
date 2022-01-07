
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pte_t ;
struct TYPE_2__ {unsigned long bitcnt; int count; int vector; } ;


 int atomic_inc (int *) ;
 TYPE_1__ mm_tracking_struct ;
 unsigned long pte_pfn (int ) ;
 int test_and_set_bit (unsigned long,int ) ;

__attribute__((used)) static inline void track_as_pte(void *val)
{
 unsigned long pfn = pte_pfn(*(pte_t *)val);
 if (pfn >= mm_tracking_struct.bitcnt)
  return;

 if (!test_and_set_bit(pfn, mm_tracking_struct.vector))
  atomic_inc(&mm_tracking_struct.count);
}
