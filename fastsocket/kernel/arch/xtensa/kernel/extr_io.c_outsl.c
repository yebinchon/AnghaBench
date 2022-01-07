
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int writel (long const,unsigned long) ;

void outsl(unsigned long addr, const void *src, unsigned long count) {
        while (count) {
                count -= 4;
                writel(*(const long *)src, addr);
                src += 4;
                addr += 4;
        }
}
