
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_client {int base; int root; int device; } ;


 int nouveau_handle_destroy (int ) ;
 int nouveau_namedb_destroy (int *) ;
 int nouveau_object_ref (int *,int *) ;

__attribute__((used)) static void
nouveau_client_dtor(struct nouveau_object *object)
{
 struct nouveau_client *client = (void *)object;
 nouveau_object_ref(((void*)0), &client->device);
 nouveau_handle_destroy(client->root);
 nouveau_namedb_destroy(&client->base);
}
