
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int dp_get_max_dp_pix_clock(int link_rate,
       int lane_num,
       int bpp)
{
 return (link_rate * lane_num * 8) / bpp;
}
