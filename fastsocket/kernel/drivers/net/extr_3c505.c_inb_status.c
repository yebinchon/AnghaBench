
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PORT_STATUS ;
 unsigned char inb (scalar_t__) ;

__attribute__((used)) static inline unsigned char inb_status(unsigned int base_addr)
{
 return inb(base_addr + PORT_STATUS);
}
