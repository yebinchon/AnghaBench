
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_bo {int kmap; } ;


 int ttm_bo_kunmap (int *) ;

void
nouveau_bo_unmap(struct nouveau_bo *nvbo)
{
 if (nvbo)
  ttm_bo_kunmap(&nvbo->kmap);
}
