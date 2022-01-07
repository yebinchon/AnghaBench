
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_ring {scalar_t__ next_to_clean; scalar_t__ next_to_use; int count; } ;



__attribute__((used)) static inline int igb_desc_unused(struct igb_ring *ring)
{
 if (ring->next_to_clean > ring->next_to_use)
  return ring->next_to_clean - ring->next_to_use - 1;

 return ring->count + ring->next_to_clean - ring->next_to_use - 1;
}
