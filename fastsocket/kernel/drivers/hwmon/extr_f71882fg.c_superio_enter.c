
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIO_UNLOCK_KEY ;
 int outb (int ,int) ;

__attribute__((used)) static inline void superio_enter(int base)
{

 outb( SIO_UNLOCK_KEY, base);
 outb( SIO_UNLOCK_KEY, base);
}
