
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_controller {struct agp_client* clients; } ;
struct agp_client {scalar_t__ pid; struct agp_client* next; } ;
typedef scalar_t__ pid_t ;



__attribute__((used)) static struct agp_client
*agp_find_client_in_controller(struct agp_controller *controller, pid_t id)
{
 struct agp_client *client;

 if (controller == ((void*)0))
  return ((void*)0);

 client = controller->clients;

 while (client != ((void*)0)) {
  if (client->pid == id)
   return client;
  client = client->next;
 }

 return ((void*)0);
}
