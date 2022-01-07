
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 unsigned long virt_to_phys_060 (unsigned long) ;

__attribute__((used)) static inline int
cache_flush_060 (unsigned long addr, int scope, int cache, unsigned long len)
{
  unsigned long paddr, i;







  switch (scope)
    {
    case 130:
      switch (cache)
 {
 case 132:
   __asm__ __volatile__ (".chip 68060\n\t"
    "cpusha %dc\n\t"
    ".chip 68k");
   break;
 case 131:
   __asm__ __volatile__ (".chip 68060\n\t"
    "cpusha %ic\n\t"
    ".chip 68k");
   break;
 default:
 case 133:
   __asm__ __volatile__ (".chip 68060\n\t"
    "cpusha %bc\n\t"
    ".chip 68k");
   break;
 }
      break;

    case 129:


      len += addr & 15;
      addr &= -16;
      if (!(paddr = virt_to_phys_060(addr))) {
 unsigned long tmp = PAGE_SIZE - (addr & ~PAGE_MASK);

 if (len <= tmp)
   return 0;
 addr += tmp;
 len -= tmp;
 tmp = PAGE_SIZE;
 for (;;)
   {
     if ((paddr = virt_to_phys_060(addr)))
       break;
     if (len <= tmp)
       return 0;
     addr += tmp;
     len -= tmp;
   }
      }
      len = (len + 15) >> 4;
      i = (PAGE_SIZE - (paddr & ~PAGE_MASK)) >> 4;
      while (len--)
 {
   switch (cache)
     {
     case 132:
       __asm__ __volatile__ (".chip 68060\n\t"
        "cpushl %%dc,(%0)\n\t"
        ".chip 68k"
        : : "a" (paddr));
       break;
     case 131:
       __asm__ __volatile__ (".chip 68060\n\t"
        "cpushl %%ic,(%0)\n\t"
        ".chip 68k"
        : : "a" (paddr));
       break;
     default:
     case 133:
       __asm__ __volatile__ (".chip 68060\n\t"
        "cpushl %%bc,(%0)\n\t"
        ".chip 68k"
        : : "a" (paddr));
       break;
     }
   if (!--i && len)
     {





       addr += PAGE_SIZE;
       addr &= PAGE_MASK;

       i = PAGE_SIZE / 16;


       for (;;)
         {
           if ((paddr = virt_to_phys_060(addr)))
             break;
           if (len <= i)
             return 0;
           len -= i;
           addr += PAGE_SIZE;
         }
     }
   else
     paddr += 16;
 }
      break;

    default:
    case 128:
      len += (addr & ~PAGE_MASK) + (PAGE_SIZE - 1);
      addr &= PAGE_MASK;

      for (len >>= PAGE_SHIFT; len--; addr += PAGE_SIZE)
 {
   if (!(paddr = virt_to_phys_060(addr)))
     continue;
   switch (cache)
     {
     case 132:
       __asm__ __volatile__ (".chip 68060\n\t"
        "cpushp %%dc,(%0)\n\t"
        ".chip 68k"
        : : "a" (paddr));
       break;
     case 131:
       __asm__ __volatile__ (".chip 68060\n\t"
        "cpushp %%ic,(%0)\n\t"
        ".chip 68k"
        : : "a" (paddr));
       break;
     default:
     case 133:
       __asm__ __volatile__ (".chip 68060\n\t"
        "cpushp %%bc,(%0)\n\t"
        ".chip 68k"
        : : "a" (paddr));
       break;
     }
 }
      break;
    }
  return 0;
}
