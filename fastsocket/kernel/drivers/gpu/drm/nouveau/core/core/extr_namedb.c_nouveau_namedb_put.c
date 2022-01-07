
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_handle {TYPE_1__* namedb; } ;
struct TYPE_2__ {int lock; } ;


 int read_unlock (int *) ;

void
nouveau_namedb_put(struct nouveau_handle *handle)
{
 if (handle)
  read_unlock(&handle->namedb->lock);
}
