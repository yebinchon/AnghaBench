
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlsi_ring {int mask; struct ring_descr* rd; int head; int tail; } ;
struct ring_descr {int dummy; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline struct ring_descr *ring_last(struct vlsi_ring *r)
{
 int t;

 t = atomic_read(&r->tail) & r->mask;
 return (((t+1) & r->mask) == (atomic_read(&r->head) & r->mask)) ? ((void*)0) : &r->rd[t];
}
