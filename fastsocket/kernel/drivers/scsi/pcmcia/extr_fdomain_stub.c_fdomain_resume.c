
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int fdomain_16x0_bus_reset (int *) ;

__attribute__((used)) static int fdomain_resume(struct pcmcia_device *link)
{
 fdomain_16x0_bus_reset(((void*)0));

 return 0;
}
