
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;


 int const SONY_MAX_BRIGHTNESS ;

__attribute__((used)) static int brightness_default_validate(const int direction, const int value)
{
 switch (direction) {
  case 128:
   return value - 1;
  case 129:
   if (value >= 0 && value < SONY_MAX_BRIGHTNESS)
    return value + 1;
 }
 return -EINVAL;
}
