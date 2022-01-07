
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long level_mask (int) ;
 unsigned long level_size (int) ;

__attribute__((used)) static inline unsigned long align_to_level(unsigned long pfn, int level)
{
 return (pfn + level_size(level) - 1) & level_mask(level);
}
