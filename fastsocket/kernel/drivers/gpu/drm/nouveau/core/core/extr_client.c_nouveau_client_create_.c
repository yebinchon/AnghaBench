
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct nouveau_object {int dummy; } ;
struct nouveau_client {int debug; int name; int device; int root; } ;
struct TYPE_4__ {int usecount; } ;


 int ENODEV ;
 int NV_CLIENT_CLASS ;
 int atomic_set (int *,int) ;
 int nouveau_client_oclass ;
 int nouveau_dbgopt (char const*,char*) ;
 scalar_t__ nouveau_device_find (int ) ;
 int nouveau_device_sclass ;
 int nouveau_handle_create (TYPE_1__*,int ,int ,TYPE_1__*,int *) ;
 int nouveau_namedb_create_ (int *,int *,int *,int ,int ,int ,int,void**) ;
 int nouveau_object_ref (struct nouveau_object*,int *) ;
 TYPE_1__* nv_object (struct nouveau_client*) ;
 int snprintf (int ,int,char*,char const*) ;

int
nouveau_client_create_(const char *name, u64 devname, const char *cfg,
         const char *dbg, int length, void **pobject)
{
 struct nouveau_object *device;
 struct nouveau_client *client;
 int ret;

 device = (void *)nouveau_device_find(devname);
 if (!device)
  return -ENODEV;

 ret = nouveau_namedb_create_(((void*)0), ((void*)0), &nouveau_client_oclass,
         NV_CLIENT_CLASS, nouveau_device_sclass,
         0, length, pobject);
 client = *pobject;
 if (ret)
  return ret;

 ret = nouveau_handle_create(nv_object(client), ~0, ~0,
        nv_object(client), &client->root);
 if (ret)
  return ret;


 atomic_set(&nv_object(client)->usecount, 2);

 nouveau_object_ref(device, &client->device);
 snprintf(client->name, sizeof(client->name), "%s", name);
 client->debug = nouveau_dbgopt(dbg, "CLIENT");
 return 0;
}
