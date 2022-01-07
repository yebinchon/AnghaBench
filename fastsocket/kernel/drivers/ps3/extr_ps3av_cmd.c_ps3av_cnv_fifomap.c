
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 ps3av_cnv_fifomap(const u8 *map)
{
 u8 ret = 0;

 ret = map[0] + (map[1] << 2) + (map[2] << 4) + (map[3] << 6);
 return ret;
}
