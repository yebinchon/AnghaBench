
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct put_image_params {int src_scan_h; int dst_h; int src_scan_w; int dst_w; } ;


 int EINVAL ;

__attribute__((used)) static int check_overlay_scaling(struct put_image_params *rec)
{
 u32 tmp;


 tmp = ((rec->src_scan_h << 16) / rec->dst_h) >> 16;
 if (tmp > 7)
  return -EINVAL;
 tmp = ((rec->src_scan_w << 16) / rec->dst_w) >> 16;
 if (tmp > 7)
  return -EINVAL;

 return 0;
}
