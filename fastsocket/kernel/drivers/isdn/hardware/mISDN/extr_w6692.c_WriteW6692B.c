
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct w6692_ch {scalar_t__ addr; } ;


 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
WriteW6692B(struct w6692_ch *bc, u8 offset, u8 value)
{
 outb(value, bc->addr + offset);
}
