
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_ring_container {int count; struct igb_ring* ring; } ;
struct igb_ring {int dummy; } ;



__attribute__((used)) static void igb_add_ring(struct igb_ring *ring,
    struct igb_ring_container *head)
{
 head->ring = ring;
 head->count++;
}
