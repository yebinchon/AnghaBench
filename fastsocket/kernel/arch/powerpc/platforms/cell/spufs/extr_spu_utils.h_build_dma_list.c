
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int* ui; } ;
typedef TYPE_1__ addr64 ;
struct TYPE_5__ {int size; unsigned int ea_low; } ;


 scalar_t__ LSCSA_BYTE_OFFSET (int ) ;
 TYPE_2__* dma_list ;
 int * ls ;

__attribute__((used)) static inline void build_dma_list(addr64 lscsa_ea)
{
 unsigned int ea_low;
 int i;






 ea_low = lscsa_ea.ui[1];
 ea_low += LSCSA_BYTE_OFFSET(ls[16384]);

 for (i = 0; i < 15; i++, ea_low += 16384) {
  dma_list[i].size = 16384;
  dma_list[i].ea_low = ea_low;
 }
}
