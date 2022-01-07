
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb_p (int,scalar_t__) ;
 scalar_t__ superio_cmd ;

__attribute__((used)) static inline void superio_outb(int addr, int val)
{
 outb_p(addr, superio_cmd);
 outb_p(val, superio_cmd + 1);
}
