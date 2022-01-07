
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int set_is_vf(int chip_id)
{
 switch (chip_id) {
 case 132:
 case 131:
 case 130:
 case 128:
 case 129:
  return 1;
 default:
  return 0;
 }
}
