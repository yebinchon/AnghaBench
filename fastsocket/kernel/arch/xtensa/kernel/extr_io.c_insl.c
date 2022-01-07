
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long readl (unsigned long) ;

void insl(unsigned long addr, void *dst, unsigned long count) {
        while (count) {
                count -= 4;



                *(unsigned long *)dst = readl(addr);
                dst += 4;
                addr += 4;
        }
}
