
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct adt7475_data {int config5; } ;


 int CONFIG5_TWOSCOMP ;
 long SENSORS_LIMIT (long,int,int) ;

__attribute__((used)) static inline u16 temp2reg(struct adt7475_data *data, long val)
{
 u16 ret;

 if (!(data->config5 & CONFIG5_TWOSCOMP)) {
  val = SENSORS_LIMIT(val, -64000, 191000);
  ret = (val + 64500) / 1000;
 } else {
  val = SENSORS_LIMIT(val, -128000, 127000);
  if (val < -500)
   ret = (256500 + val) / 1000;
  else
   ret = (val + 500) / 1000;
 }

 return ret << 2;
}
