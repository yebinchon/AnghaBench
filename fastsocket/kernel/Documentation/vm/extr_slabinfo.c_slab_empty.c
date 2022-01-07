
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabinfo {scalar_t__ objects; scalar_t__ slabs; } ;


 int set_obj (struct slabinfo*,char*,int) ;

__attribute__((used)) static int slab_empty(struct slabinfo *s)
{
 if (s->objects > 0)
  return 0;





 if (s->slabs != 0)
  set_obj(s, "shrink", 1);

 return 1;
}
