
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m2p_channel {int next_slot; scalar_t__ base; } ;
struct ep93xx_dma_buffer {int bus_addr; int size; } ;


 scalar_t__ M2P_BASE0 ;
 scalar_t__ M2P_BASE1 ;
 scalar_t__ M2P_MAXCNT0 ;
 scalar_t__ M2P_MAXCNT1 ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void feed_buf(struct m2p_channel *ch, struct ep93xx_dma_buffer *buf)
{
 if (ch->next_slot == 0) {
  writel(buf->size, ch->base + M2P_MAXCNT0);
  writel(buf->bus_addr, ch->base + M2P_BASE0);
 } else {
  writel(buf->size, ch->base + M2P_MAXCNT1);
  writel(buf->bus_addr, ch->base + M2P_BASE1);
 }
 ch->next_slot ^= 1;
}
