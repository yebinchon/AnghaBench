
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline int FAN_FROM_REG(u8 val, int div)
{
 return val==0 ? -1 : val==255 ? 0 : 1350000/(val*div);
}
