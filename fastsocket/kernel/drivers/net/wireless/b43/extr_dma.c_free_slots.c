
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_dmaring {int nr_slots; int used_slots; } ;



__attribute__((used)) static inline int free_slots(struct b43_dmaring *ring)
{
 return (ring->nr_slots - ring->used_slots);
}
