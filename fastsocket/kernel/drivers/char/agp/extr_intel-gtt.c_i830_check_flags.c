
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool i830_check_flags(unsigned int flags)
{
 switch (flags) {
 case 0:
 case 130:
 case 129:
 case 128:
  return 1;
 }

 return 0;
}
