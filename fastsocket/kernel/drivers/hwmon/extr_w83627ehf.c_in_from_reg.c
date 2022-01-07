
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t* scale_in ;

__attribute__((used)) static inline long in_from_reg(u8 reg, u8 nr)
{
 return reg * scale_in[nr];
}
