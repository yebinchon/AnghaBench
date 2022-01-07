
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb_p (scalar_t__) ;
 int outb_p (int,scalar_t__) ;
 scalar_t__ superio_cmd ;

__attribute__((used)) static inline int superio_inb(int addr)
{
 outb_p(addr, superio_cmd);
 return inb_p(superio_cmd + 1);
}
