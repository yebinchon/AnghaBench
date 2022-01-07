
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,unsigned int) ;

__attribute__((used)) static inline void w977_efm_exit(unsigned int efio)
{
 outb(0xAA, efio);
}
