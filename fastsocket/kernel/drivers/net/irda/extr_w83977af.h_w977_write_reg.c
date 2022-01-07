
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int outb (int ,unsigned int) ;

__attribute__((used)) static inline void w977_write_reg(__u8 reg, __u8 value, unsigned int efio)
{
 outb(reg, efio);
 outb(value, efio+1);
}
