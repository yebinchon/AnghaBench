
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int I915_OVERLAY_DEPTH_MASK ;


__attribute__((used)) static int packed_width_bytes(u32 format, short width)
{
 switch (format & I915_OVERLAY_DEPTH_MASK) {
 case 128:
  return width << 1;
 default:
  return -EINVAL;
 }
}
