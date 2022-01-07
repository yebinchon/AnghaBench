
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bit (int) ;
 int ks0108_writedata (int) ;
 int min (unsigned char,unsigned char) ;

void ks0108_page(unsigned char page)
{
 ks0108_writedata(min(page,(unsigned char)7) | bit(3) | bit(4) | bit(5) | bit(7));
}
