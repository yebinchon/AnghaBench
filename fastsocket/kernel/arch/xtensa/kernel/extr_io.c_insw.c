
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short readw (unsigned long) ;

void insw(unsigned long addr, void *dst, unsigned long count) {
        while (count) {
                count -= 2;
                *(unsigned short *)dst = readw(addr);
                dst += 2;
                addr += 2;
        }
}
