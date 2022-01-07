
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_dmaring {int nr_slots; } ;


 int B43legacy_WARN_ON (int) ;

__attribute__((used)) static inline int prev_slot(struct b43legacy_dmaring *ring, int slot)
{
 B43legacy_WARN_ON(!(slot >= 0 && slot <= ring->nr_slots - 1));
 if (slot == 0)
  return ring->nr_slots - 1;
 return slot - 1;
}
