
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 fan_to_reg(int fan)
{
 return fan ? (1500000 / fan) : 0;
}
