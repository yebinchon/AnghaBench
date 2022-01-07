
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlsi_ring {int tail; } ;
struct ring_descr {int dummy; } ;


 int atomic_inc (int *) ;
 struct ring_descr* ring_last (struct vlsi_ring*) ;

__attribute__((used)) static inline struct ring_descr *ring_put(struct vlsi_ring *r)
{
 atomic_inc(&r->tail);
 return ring_last(r);
}
