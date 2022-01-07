
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned int counters_per_chip ;

__attribute__((used)) static inline unsigned dma_selection_counter(unsigned counter_index)
{
 BUG_ON(counter_index >= counters_per_chip);
 return counter_index;
}
