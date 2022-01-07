
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_controller {int num_clients; struct agp_client* clients; } ;
struct agp_client {struct agp_client* prev; struct agp_client* next; } ;
typedef int pid_t ;


 int EINVAL ;
 struct agp_client* agp_find_client_in_controller (struct agp_controller*,int ) ;
 struct agp_controller* agp_find_controller_for_client (int ) ;
 int agp_remove_seg_from_client (struct agp_client*) ;
 int kfree (struct agp_client*) ;

int agp_remove_client(pid_t id)
{
 struct agp_client *client;
 struct agp_client *prev_client;
 struct agp_client *next_client;
 struct agp_controller *controller;

 controller = agp_find_controller_for_client(id);
 if (controller == ((void*)0))
  return -EINVAL;

 client = agp_find_client_in_controller(controller, id);
 if (client == ((void*)0))
  return -EINVAL;

 prev_client = client->prev;
 next_client = client->next;

 if (prev_client != ((void*)0)) {
  prev_client->next = next_client;
  if (next_client != ((void*)0))
   next_client->prev = prev_client;

 } else {
  if (next_client != ((void*)0))
   next_client->prev = ((void*)0);
  controller->clients = next_client;
 }

 controller->num_clients--;
 agp_remove_seg_from_client(client);
 kfree(client);
 return 0;
}
