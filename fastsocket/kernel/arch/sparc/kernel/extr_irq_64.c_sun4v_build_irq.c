
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int sun4v_build_common (unsigned long,int *) ;
 unsigned long sun4v_devino_to_sysino (int ,unsigned int) ;
 int sun4v_irq ;

unsigned int sun4v_build_irq(u32 devhandle, unsigned int devino)
{
 unsigned long sysino = sun4v_devino_to_sysino(devhandle, devino);

 return sun4v_build_common(sysino, &sun4v_irq);
}
