
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int inb (unsigned int) ;
 int outb (int ,unsigned int) ;

__attribute__((used)) static inline __u8 w977_read_reg(__u8 reg, unsigned int efio)
{
 outb(reg, efio);
 return inb(efio+1);
}
