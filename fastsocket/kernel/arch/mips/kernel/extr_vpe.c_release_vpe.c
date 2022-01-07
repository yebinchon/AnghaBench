
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe {scalar_t__ load_addr; int list; } ;


 int kfree (struct vpe*) ;
 int list_del (int *) ;
 int release_progmem (struct vpe*) ;

__attribute__((used)) static void release_vpe(struct vpe *v)
{
 list_del(&v->list);
 if (v->load_addr)
  release_progmem(v);
 kfree(v);
}
