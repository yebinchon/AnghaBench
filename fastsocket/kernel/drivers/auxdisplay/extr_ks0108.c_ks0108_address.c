
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bit (int) ;
 int ks0108_writedata (int) ;
 int min (unsigned char,unsigned char) ;

void ks0108_address(unsigned char address)
{
 ks0108_writedata(min(address,(unsigned char)63) | bit(6));
}
