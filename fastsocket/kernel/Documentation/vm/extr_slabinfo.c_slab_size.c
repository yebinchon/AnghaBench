
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabinfo {unsigned long slabs; unsigned long order; } ;


 unsigned long page_size ;

__attribute__((used)) static unsigned long slab_size(struct slabinfo *s)
{
 return s->slabs * (page_size << s->order);
}
