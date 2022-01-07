
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int NI_GPCT0_SUBDEV ;
 int NI_GPCT1_SUBDEV ;

__attribute__((used)) static inline unsigned NI_GPCT_SUBDEV(unsigned counter_index)
{
 switch (counter_index) {
 case 0:
  return NI_GPCT0_SUBDEV;
  break;
 case 1:
  return NI_GPCT1_SUBDEV;
  break;
 default:
  break;
 }
 BUG();
 return NI_GPCT0_SUBDEV;
}
