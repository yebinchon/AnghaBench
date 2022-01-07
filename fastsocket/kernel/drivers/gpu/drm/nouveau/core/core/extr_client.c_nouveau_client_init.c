
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_client {int root; } ;


 int nouveau_handle_init (int ) ;
 int nv_debug (struct nouveau_client*,char*,...) ;

int
nouveau_client_init(struct nouveau_client *client)
{
 int ret;
 nv_debug(client, "init running\n");
 ret = nouveau_handle_init(client->root);
 nv_debug(client, "init completed with %d\n", ret);
 return ret;
}
