
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long LEVEL_MASK ;
 unsigned long level_to_offset_bits (int) ;

__attribute__((used)) static inline int pfn_level_offset(unsigned long pfn, int level)
{
 return (pfn >> level_to_offset_bits(level)) & LEVEL_MASK;
}
