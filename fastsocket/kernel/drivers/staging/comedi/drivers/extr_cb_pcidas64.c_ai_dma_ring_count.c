
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_board {scalar_t__ layout; } ;


 scalar_t__ LAYOUT_4020 ;
 unsigned int MAX_AI_DMA_RING_COUNT ;
 unsigned int MIN_AI_DMA_RING_COUNT ;

__attribute__((used)) static inline unsigned int ai_dma_ring_count(struct pcidas64_board *board)
{
 if (board->layout == LAYOUT_4020)
  return MAX_AI_DMA_RING_COUNT;
 else
  return MIN_AI_DMA_RING_COUNT;
}
