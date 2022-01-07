
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ni_reg_type { ____Placeholder_ni_reg_type } ni_reg_type ;


 int ni_reg_622x ;

__attribute__((used)) static inline unsigned MSeries_AI_Config_Bank_Bits(enum ni_reg_type reg_type,
         unsigned channel)
{
 unsigned bits = channel & 0x30;
 if (reg_type == ni_reg_622x) {
  if (channel & 0x40)
   bits |= 0x400;
 }
 return bits;
}
