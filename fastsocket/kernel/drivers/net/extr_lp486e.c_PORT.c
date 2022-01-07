
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr ;


 scalar_t__ IOADDR ;
 int outw (int,scalar_t__) ;
 int printk (char*) ;

__attribute__((used)) static inline void
PORT(phys_addr a, unsigned int cmd) {
 if (a & 0xf)
  printk("lp486e.c: PORT: address not aligned\n");
 outw(((a & 0xffff) | cmd), IOADDR);
 outw(((a>>16) & 0xffff), IOADDR+2);
}
