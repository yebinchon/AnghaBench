
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;



__attribute__((used)) static void *decode_register(u8 modrm_reg, unsigned long *regs,
        int highbyte_regs)
{
 void *p;

 p = &regs[modrm_reg];
 if (highbyte_regs && modrm_reg >= 4 && modrm_reg < 8)
  p = (unsigned char *)&regs[modrm_reg & 3] + 1;
 return p;
}
