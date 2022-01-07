
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slice_mask {unsigned int low_slices; unsigned int high_slices; int member_1; int member_0; } ;


 unsigned int GET_HIGH_SLICE_INDEX (unsigned long) ;
 unsigned int GET_LOW_SLICE_INDEX (unsigned long) ;
 unsigned long SLICE_LOW_TOP ;
 unsigned long min (unsigned long,unsigned long) ;

__attribute__((used)) static struct slice_mask slice_range_to_mask(unsigned long start,
          unsigned long len)
{
 unsigned long end = start + len - 1;
 struct slice_mask ret = { 0, 0 };

 if (start < SLICE_LOW_TOP) {
  unsigned long mend = min(end, SLICE_LOW_TOP);
  unsigned long mstart = min(start, SLICE_LOW_TOP);

  ret.low_slices = (1u << (GET_LOW_SLICE_INDEX(mend) + 1))
   - (1u << GET_LOW_SLICE_INDEX(mstart));
 }

 if ((start + len) > SLICE_LOW_TOP)
  ret.high_slices = (1u << (GET_HIGH_SLICE_INDEX(end) + 1))
   - (1u << GET_HIGH_SLICE_INDEX(start));

 return ret;
}
