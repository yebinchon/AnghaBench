
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_namedb {int lock; } ;
struct nouveau_handle {int dummy; } ;


 struct nouveau_handle* nouveau_namedb_lookup_cinst (struct nouveau_namedb*,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct nouveau_handle *
nouveau_namedb_get_cinst(struct nouveau_namedb *namedb, u32 cinst)
{
 struct nouveau_handle *handle;
 read_lock(&namedb->lock);
 handle = nouveau_namedb_lookup_cinst(namedb, cinst);
 if (handle == ((void*)0))
  read_unlock(&namedb->lock);
 return handle;
}
