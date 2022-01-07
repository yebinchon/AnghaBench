
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int wptr_old; int wptr; } ;



void radeon_ring_undo(struct radeon_ring *ring)
{
 ring->wptr = ring->wptr_old;
}
