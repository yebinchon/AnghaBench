
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;

__attribute__((used)) static inline void tpm_write_index(int base, int index, int value)
{
 outb(index, base);
 outb(value & 0xFF, base+1);
}
