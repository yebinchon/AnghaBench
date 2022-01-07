
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_client {int root; } ;


 int nouveau_handle_fini (int ,int) ;
 int nv_debug (struct nouveau_client*,char*,char const*,...) ;

int
nouveau_client_fini(struct nouveau_client *client, bool suspend)
{
 const char *name[2] = { "fini", "suspend" };
 int ret;

 nv_debug(client, "%s running\n", name[suspend]);
 ret = nouveau_handle_fini(client->root, suspend);
 nv_debug(client, "%s completed with %d\n", name[suspend], ret);
 return ret;
}
