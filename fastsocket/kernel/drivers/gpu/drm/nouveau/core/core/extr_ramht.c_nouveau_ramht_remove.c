
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_ramht {int dummy; } ;
struct nouveau_bar {int (* flush ) (struct nouveau_bar*) ;} ;


 struct nouveau_bar* nouveau_bar (struct nouveau_ramht*) ;
 int nv_wo32 (struct nouveau_ramht*,int,int) ;
 int stub1 (struct nouveau_bar*) ;

void
nouveau_ramht_remove(struct nouveau_ramht *ramht, int cookie)
{
 struct nouveau_bar *bar = nouveau_bar(ramht);
 nv_wo32(ramht, cookie + 0, 0x00000000);
 nv_wo32(ramht, cookie + 4, 0x00000000);
 if (bar)
  bar->flush(bar);
}
