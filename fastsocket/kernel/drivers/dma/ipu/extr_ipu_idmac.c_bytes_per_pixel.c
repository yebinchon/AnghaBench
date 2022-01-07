
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum pixel_fmt { ____Placeholder_pixel_fmt } pixel_fmt ;
__attribute__((used)) static uint32_t bytes_per_pixel(enum pixel_fmt fmt)
{
 switch (fmt) {
 case 137:
 case 133:
 case 130:
 case 129:
 default:
  return 1;
 case 132:
 case 128:
 case 131:
  return 2;
 case 139:
 case 135:
  return 3;
 case 136:
 case 138:
 case 134:
 case 140:
  return 4;
 }
}
