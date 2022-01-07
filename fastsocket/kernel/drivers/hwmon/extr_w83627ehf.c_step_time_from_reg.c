
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline unsigned int step_time_from_reg(u8 reg, u8 mode)
{
 return mode ? 100 * reg : 400 * reg;
}
