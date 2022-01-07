
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm90_data {int flags; } ;


 int LM90_FLAG_ADT7461_EXT ;

__attribute__((used)) static u8 temp_to_u8_adt7461(struct lm90_data *data, long val)
{
 if (data->flags & LM90_FLAG_ADT7461_EXT) {
  if (val <= -64000)
   return 0;
  if (val >= 191000)
   return 0xFF;
  return (val + 500 + 64000) / 1000;
 } else {
  if (val <= 0)
   return 0;
  if (val >= 127000)
   return 127;
  return (val + 500) / 1000;
 }
}
