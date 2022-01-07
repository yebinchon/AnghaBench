
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_file_private {int access_flags; } ;
struct agp_controller {struct agp_client* clients; } ;
struct agp_client {struct agp_client* next; int pid; } ;


 int AGP_FF_IS_CLIENT ;
 int AGP_FF_IS_VALID ;
 struct agp_file_private* agp_find_private (int ) ;
 int agp_remove_seg_from_client (struct agp_client*) ;
 int clear_bit (int ,int *) ;
 int kfree (struct agp_client*) ;

__attribute__((used)) static void agp_remove_all_clients(struct agp_controller *controller)
{
 struct agp_client *client;
 struct agp_client *temp;

 client = controller->clients;

 while (client) {
  struct agp_file_private *priv;

  temp = client;
  agp_remove_seg_from_client(temp);
  priv = agp_find_private(temp->pid);

  if (priv != ((void*)0)) {
   clear_bit(AGP_FF_IS_VALID, &priv->access_flags);
   clear_bit(AGP_FF_IS_CLIENT, &priv->access_flags);
  }
  client = client->next;
  kfree(temp);
 }
}
