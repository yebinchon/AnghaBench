
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct lm90_data {int flags; } ;


 int LM90_FLAG_ADT7461_EXT ;
 int temp_from_s16 (int) ;

__attribute__((used)) static inline int temp_from_u16_adt7461(struct lm90_data *data, u16 val)
{
 if (data->flags & LM90_FLAG_ADT7461_EXT)
  return (val - 0x4000) / 64 * 250;
 else
  return temp_from_s16(val);
}
