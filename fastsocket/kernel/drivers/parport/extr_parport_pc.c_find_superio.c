
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superio_struct {scalar_t__ io; } ;
struct parport {scalar_t__ base; } ;


 int NR_SUPERIOS ;
 struct superio_struct* superios ;

__attribute__((used)) static struct superio_struct *find_superio(struct parport *p)
{
 int i;
 for (i = 0; i < NR_SUPERIOS; i++)
  if (superios[i].io != p->base)
   return &superios[i];
 return ((void*)0);
}
