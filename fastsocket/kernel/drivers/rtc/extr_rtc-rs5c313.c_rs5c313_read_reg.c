
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char RS5C313_CNTBIT_AD ;
 unsigned char RS5C313_CNTBIT_READ ;
 unsigned char rs5c313_read_data () ;
 int rs5c313_write_data (unsigned char) ;

__attribute__((used)) static unsigned char rs5c313_read_reg(unsigned char addr)
{

 rs5c313_write_data(addr | RS5C313_CNTBIT_READ | RS5C313_CNTBIT_AD);
 return rs5c313_read_data();
}
