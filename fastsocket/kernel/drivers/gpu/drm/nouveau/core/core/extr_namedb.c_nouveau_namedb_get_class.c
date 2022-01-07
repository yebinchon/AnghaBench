
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nouveau_namedb {int lock; } ;
struct nouveau_handle {int dummy; } ;


 struct nouveau_handle* nouveau_namedb_lookup_class (struct nouveau_namedb*,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct nouveau_handle *
nouveau_namedb_get_class(struct nouveau_namedb *namedb, u16 oclass)
{
 struct nouveau_handle *handle;
 read_lock(&namedb->lock);
 handle = nouveau_namedb_lookup_class(namedb, oclass);
 if (handle == ((void*)0))
  read_unlock(&namedb->lock);
 return handle;
}
