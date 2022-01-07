
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B1_WRITE ;
 int b1_tx_empty (unsigned int) ;
 int b1outp (unsigned int,int ,unsigned char) ;

__attribute__((used)) static inline void b1_put_byte(unsigned int base, unsigned char val)
{
 while (!b1_tx_empty(base));
 b1outp(base, B1_WRITE, val);
}
