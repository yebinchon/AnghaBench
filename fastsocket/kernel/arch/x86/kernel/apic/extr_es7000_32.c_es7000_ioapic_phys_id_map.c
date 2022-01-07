
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int physid_mask_t ;


 int physids_promote (int) ;

__attribute__((used)) static physid_mask_t es7000_ioapic_phys_id_map(physid_mask_t phys_map)
{

 return physids_promote(0xff);
}
