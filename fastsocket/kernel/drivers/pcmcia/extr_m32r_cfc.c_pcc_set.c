
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int debug (int,char*,unsigned int,unsigned int) ;
 int outw (unsigned int,unsigned int) ;

__attribute__((used)) static void pcc_set(u_short sock, unsigned int reg, unsigned int data)
{
 outw(data, reg);
 debug(3, "m32r_cfc: pcc_set: reg(0x%08x)=0x%04x\n", reg, data);
}
