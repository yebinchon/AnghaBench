
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int tlb1_entry_num ;
 unsigned int tlbcam_index ;

__attribute__((used)) static inline unsigned int tlb1_max_shadow_size(void)
{
 return tlb1_entry_num - tlbcam_index;
}
