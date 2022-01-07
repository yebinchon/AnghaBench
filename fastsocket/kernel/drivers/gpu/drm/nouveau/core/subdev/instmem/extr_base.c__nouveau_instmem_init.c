
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_instmem {int dummy; } ;


 int nouveau_instmem_init (struct nouveau_instmem*) ;

int
_nouveau_instmem_init(struct nouveau_object *object)
{
 struct nouveau_instmem *imem = (void *)object;
 return nouveau_instmem_init(imem);
}
