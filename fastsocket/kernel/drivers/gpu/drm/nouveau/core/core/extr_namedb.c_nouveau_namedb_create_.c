
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_namedb {int list; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int NV_NAMEDB_CLASS ;
 int nouveau_parent_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,struct nouveau_oclass*,int,int,void**) ;
 int rwlock_init (int *) ;

int
nouveau_namedb_create_(struct nouveau_object *parent,
         struct nouveau_object *engine,
         struct nouveau_oclass *oclass, u32 pclass,
         struct nouveau_oclass *sclass, u32 engcls,
         int length, void **pobject)
{
 struct nouveau_namedb *namedb;
 int ret;

 ret = nouveau_parent_create_(parent, engine, oclass, pclass |
         NV_NAMEDB_CLASS, sclass, engcls,
         length, pobject);
 namedb = *pobject;
 if (ret)
  return ret;

 rwlock_init(&namedb->lock);
 INIT_LIST_HEAD(&namedb->list);
 return 0;
}
