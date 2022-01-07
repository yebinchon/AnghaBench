
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ phys_addr_t ;
struct TYPE_2__ {void* base_virt; scalar_t__ base_phys; } ;


 TYPE_1__* bcom_sram ;

__attribute__((used)) static inline void *bcom_sram_pa2va(phys_addr_t pa) {
 return bcom_sram->base_virt +
  (unsigned long)(pa - bcom_sram->base_phys);
}
