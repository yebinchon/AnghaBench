
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct soc_mbus_pixelfmt {int packing; int bits_per_sample; } ;
typedef int s32 ;


 int EINVAL ;





s32 soc_mbus_bytes_per_line(u32 width, const struct soc_mbus_pixelfmt *mf)
{
 switch (mf->packing) {
 case 128:
  return width * mf->bits_per_sample / 8;
 case 131:
 case 130:
 case 129:
  return width * 2;
 }
 return -EINVAL;
}
