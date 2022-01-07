
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;



__attribute__((used)) static inline int LM77_TEMP_FROM_REG(s16 reg)
{
 return (reg / 8) * 500;
}
