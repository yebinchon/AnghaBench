
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int debug (int,char*,unsigned int,unsigned int) ;
 unsigned int inw (unsigned int) ;

__attribute__((used)) static unsigned int pcc_get(u_short sock, unsigned int reg)
{
 unsigned int val = inw(reg);
 debug(3, "m32r_cfc: pcc_get: reg(0x%08x)=0x%04x\n", reg, val);
 return val;
}
