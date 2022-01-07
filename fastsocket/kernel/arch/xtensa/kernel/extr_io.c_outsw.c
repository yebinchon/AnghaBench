
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int writew (short const,unsigned long) ;

void outsw(unsigned long addr, const void *src, unsigned long count) {
        while (count) {
                count -= 2;
                writew(*(const short *)src, addr);
                src += 2;
                addr += 2;
        }
}
