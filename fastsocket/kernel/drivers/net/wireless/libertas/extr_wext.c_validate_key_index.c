
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EINVAL ;

__attribute__((used)) static int validate_key_index(u16 def_index, u16 raw_index,
         u16 *out_index, u16 *is_default)
{
 if (!out_index || !is_default)
  return -EINVAL;


 if (raw_index > 0) {
  if (raw_index > 4)
   return -EINVAL;
  *out_index = raw_index - 1;
 } else {
  *out_index = def_index;
  *is_default = 1;
 }
 return 0;
}
