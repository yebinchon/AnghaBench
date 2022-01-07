
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum chips { ____Placeholder_chips } chips ;


 int SENSORS_LIMIT (long,int,int) ;
 int as99127f ;
 int w83781d ;

__attribute__((used)) static inline u8
DIV_TO_REG(long val, enum chips type)
{
 int i;
 val = SENSORS_LIMIT(val, 1,
       ((type == w83781d
         || type == as99127f) ? 8 : 128)) >> 1;
 for (i = 0; i < 7; i++) {
  if (val == 0)
   break;
  val >>= 1;
 }
 return i;
}
