
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PORT_COMMAND ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline void outb_command(unsigned char val, unsigned int base_addr)
{
 outb(val, base_addr + PORT_COMMAND);
}
