
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _end ;
 scalar_t__ _start ;
 int fatal (char*) ;
 void* malloc (unsigned long) ;
 void* of_claim (unsigned long,unsigned long,int ) ;
 int printf (char*,unsigned long,unsigned long,unsigned long,void*) ;

void *of_vmlinux_alloc(unsigned long size)
{
 unsigned long start = (unsigned long)_start, end = (unsigned long)_end;
 void *addr;
 void *p;





 addr = of_claim(start, end - start, 0);
 printf("Trying to claim from 0x%lx to 0x%lx (0x%lx) got %p\r\n",
        start, end, end - start, addr);

 p = malloc(size);
 if (!p)
  fatal("Can't allocate memory for kernel image!\n\r");

 return p;
}
