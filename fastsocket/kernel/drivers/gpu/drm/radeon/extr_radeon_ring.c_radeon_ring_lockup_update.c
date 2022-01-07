
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int last_activity; int rptr; int last_rptr; } ;


 int jiffies ;

void radeon_ring_lockup_update(struct radeon_ring *ring)
{
 ring->last_rptr = ring->rptr;
 ring->last_activity = jiffies;
}
