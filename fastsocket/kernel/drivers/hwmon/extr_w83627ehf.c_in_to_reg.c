
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;


 size_t SENSORS_LIMIT (int,int ,int) ;
 int* scale_in ;

__attribute__((used)) static inline u8 in_to_reg(u32 val, u8 nr)
{
 return SENSORS_LIMIT(((val + (scale_in[nr] / 2)) / scale_in[nr]), 0, 255);
}
