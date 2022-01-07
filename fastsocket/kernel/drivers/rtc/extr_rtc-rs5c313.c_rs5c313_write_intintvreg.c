
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RS5C313_ADDR_INTINTVREG ;
 int rs5c313_write_reg (int ,unsigned char) ;

__attribute__((used)) static inline void rs5c313_write_intintvreg(unsigned char data)
{
 rs5c313_write_reg(RS5C313_ADDR_INTINTVREG, data);
}
