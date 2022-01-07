
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SENSORS_LIMIT (long,int,int) ;

__attribute__((used)) static inline u8 DIV_TO_REG(long val)
{
 int i;
 val = SENSORS_LIMIT(val, 1, 128) >> 1;
 for (i = 0; i < 7; i++) {
  if (val == 0)
   break;
  val >>= 1;
 }
 return ((u8) i);
}
