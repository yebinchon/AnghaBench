
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_object {int dummy; } ;
struct nouveau_namedb {int dummy; } ;
struct nouveau_handle {int dummy; } ;


 int NV_NAMEDB_CLASS ;
 struct nouveau_handle* nouveau_namedb_get_cinst (struct nouveau_namedb*,int ) ;
 scalar_t__ nv_pclass (struct nouveau_object*,int ) ;

struct nouveau_handle *
nouveau_handle_get_cinst(struct nouveau_object *engctx, u32 cinst)
{
 struct nouveau_namedb *namedb;
 if (engctx && (namedb = (void *)nv_pclass(engctx, NV_NAMEDB_CLASS)))
  return nouveau_namedb_get_cinst(namedb, cinst);
 return ((void*)0);
}
