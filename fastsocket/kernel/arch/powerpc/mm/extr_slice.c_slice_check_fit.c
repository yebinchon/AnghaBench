
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slice_mask {int low_slices; int high_slices; } ;



__attribute__((used)) static int slice_check_fit(struct slice_mask mask, struct slice_mask available)
{
 return (mask.low_slices & available.low_slices) == mask.low_slices &&
  (mask.high_slices & available.high_slices) == mask.high_slices;
}
