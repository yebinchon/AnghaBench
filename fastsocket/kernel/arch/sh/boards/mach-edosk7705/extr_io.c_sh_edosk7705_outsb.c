
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sh_edosk7705_outb (int ,unsigned long) ;

void sh_edosk7705_outsb(unsigned long port, const void *addr, unsigned long count)
{
 unsigned char *p = (unsigned char *)addr;

 while (count--)
  sh_edosk7705_outb(*p++, port);
}
