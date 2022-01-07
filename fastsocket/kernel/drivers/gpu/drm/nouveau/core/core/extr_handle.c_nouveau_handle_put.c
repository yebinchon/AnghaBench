
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_handle {int dummy; } ;


 int nouveau_namedb_put (struct nouveau_handle*) ;

void
nouveau_handle_put(struct nouveau_handle *handle)
{
 if (handle)
  nouveau_namedb_put(handle);
}
