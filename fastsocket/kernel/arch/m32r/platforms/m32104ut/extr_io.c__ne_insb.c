
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ne_inb (void*) ;

__attribute__((used)) static inline void _ne_insb(void *portp, void *addr, unsigned long count)
{
 unsigned char *buf = (unsigned char *)addr;

 while (count--)
  *buf++ = _ne_inb(portp);
}
