
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_frmsize_discrete {scalar_t__ height; scalar_t__ width; } ;
struct v4l2_discrete_probe {int num_sizes; struct v4l2_frmsize_discrete* sizes; } ;
typedef scalar_t__ s32 ;


 scalar_t__ UINT_MAX ;
 scalar_t__ abs (scalar_t__) ;

const struct v4l2_frmsize_discrete *v4l2_find_nearest_format(
  const struct v4l2_discrete_probe *probe,
  s32 width, s32 height)
{
 int i;
 u32 error, min_error = UINT_MAX;
 const struct v4l2_frmsize_discrete *size, *best = ((void*)0);

 if (!probe)
  return best;

 for (i = 0, size = probe->sizes; i < probe->num_sizes; i++, size++) {
  error = abs(size->width - width) + abs(size->height - height);
  if (error < min_error) {
   min_error = error;
   best = size;
  }
  if (!error)
   break;
 }

 return best;
}
