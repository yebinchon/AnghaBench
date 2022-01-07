
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgt_ring {int tr_idx; } ;


 int TGT_MAX_EVENTS ;

__attribute__((used)) static inline void tgt_ring_idx_inc(struct tgt_ring *ring)
{
 if (ring->tr_idx == TGT_MAX_EVENTS - 1)
  ring->tr_idx = 0;
 else
  ring->tr_idx++;
}
