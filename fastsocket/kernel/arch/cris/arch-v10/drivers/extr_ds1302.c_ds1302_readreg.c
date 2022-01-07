
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char in_byte () ;
 int out_byte (int) ;
 int start () ;
 int stop () ;

unsigned char
ds1302_readreg(int reg)
{
 unsigned char x;

 start();
 out_byte(0x81 | (reg << 1));
 x = in_byte();
 stop();

 return x;
}
