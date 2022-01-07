
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long level_to_offset_bits (int) ;

__attribute__((used)) static inline unsigned long level_size(int level)
{
 return 1UL << level_to_offset_bits(level);
}
