
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43legacy_dmaring {size_t index; } ;



__attribute__((used)) static inline int txring_to_priority(struct b43legacy_dmaring *ring)
{
 static const u8 idx_to_prio[] =
  { 3, 2, 1, 0, 4, 5, };


return 0;

 return idx_to_prio[ring->index];
}
