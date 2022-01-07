
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RS5C313_ADDR_CNTREG ;
 unsigned char rs5c313_read_reg (int ) ;

__attribute__((used)) static inline unsigned char rs5c313_read_cntreg(void)
{
 return rs5c313_read_reg(RS5C313_ADDR_CNTREG);
}
