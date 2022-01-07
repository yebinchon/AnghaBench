
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_object {int refcount; } ;
struct TYPE_2__ {int vm; } ;
struct nouveau_cli {TYPE_1__ base; } ;


 int atomic_set (int *,int) ;
 int nouveau_client_fini (TYPE_1__*,int) ;
 int nouveau_object_ref (int *,struct nouveau_object**) ;
 int nouveau_vm_ref (int *,int *,int *) ;
 struct nouveau_object* nv_object (struct nouveau_cli*) ;

__attribute__((used)) static void
nouveau_cli_destroy(struct nouveau_cli *cli)
{
 struct nouveau_object *client = nv_object(cli);
 nouveau_vm_ref(((void*)0), &cli->base.vm, ((void*)0));
 nouveau_client_fini(&cli->base, 0);
 atomic_set(&client->refcount, 1);
 nouveau_object_ref(((void*)0), &client);
}
