
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bop_ring_buffer {scalar_t__ begin; scalar_t__ end; } ;



__attribute__((used)) static bool brb_empty(struct bop_ring_buffer *brb)
{
 return brb->begin == brb->end;
}
