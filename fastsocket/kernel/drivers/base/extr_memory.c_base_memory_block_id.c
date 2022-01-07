
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sections_per_block ;

__attribute__((used)) static inline int base_memory_block_id(int section_nr)
{
 return (section_nr / sections_per_block) * sections_per_block;
}
