
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t left; } ;


 TYPE_1__ parport_ip32_dma ;

__attribute__((used)) static inline size_t parport_ip32_dma_get_residue(void)
{
 return parport_ip32_dma.left;
}
