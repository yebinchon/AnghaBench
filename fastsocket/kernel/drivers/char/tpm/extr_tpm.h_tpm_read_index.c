
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb (int) ;
 int outb (int,int) ;

__attribute__((used)) static inline int tpm_read_index(int base, int index)
{
 outb(index, base);
 return inb(base+1) & 0xFF;
}
