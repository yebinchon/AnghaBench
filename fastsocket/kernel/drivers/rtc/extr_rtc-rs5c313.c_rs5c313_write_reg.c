
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char RS5C313_CNTBIT_AD ;
 unsigned char RS5C313_CNTBIT_DT ;
 int rs5c313_write_data (unsigned char) ;

__attribute__((used)) static void rs5c313_write_reg(unsigned char addr, unsigned char data)
{
 data &= 0x0f;
 rs5c313_write_data(addr | RS5C313_CNTBIT_AD);
 rs5c313_write_data(data | RS5C313_CNTBIT_DT);
 return;
}
