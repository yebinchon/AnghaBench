
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_namedb {int dummy; } ;


 int nouveau_namedb_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,int *,int ,struct nouveau_namedb**) ;
 struct nouveau_object* nv_object (struct nouveau_namedb*) ;

int
_nouveau_namedb_ctor(struct nouveau_object *parent,
       struct nouveau_object *engine,
       struct nouveau_oclass *oclass, void *data, u32 size,
       struct nouveau_object **pobject)
{
 struct nouveau_namedb *object;
 int ret;

 ret = nouveau_namedb_create(parent, engine, oclass, 0, ((void*)0), 0, &object);
 *pobject = nv_object(object);
 if (ret)
  return ret;

 return 0;
}
