
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bop_ring_buffer {scalar_t__ end; scalar_t__ begin; } ;



__attribute__((used)) static void brb_init(struct bop_ring_buffer *brb)
{
 brb->begin = 0;
 brb->end = 0;
}
