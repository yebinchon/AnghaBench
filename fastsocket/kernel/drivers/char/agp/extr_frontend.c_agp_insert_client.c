
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct agp_client {struct agp_client* prev; struct agp_client* next; } ;
struct TYPE_4__ {TYPE_1__* current_controller; } ;
struct TYPE_3__ {int num_clients; struct agp_client* clients; } ;


 TYPE_2__ agp_fe ;

__attribute__((used)) static void agp_insert_client(struct agp_client *client)
{
 struct agp_client *prev_client;

 prev_client = agp_fe.current_controller->clients;
 client->next = prev_client;

 if (prev_client != ((void*)0))
  prev_client->prev = client;

 agp_fe.current_controller->clients = client;
 agp_fe.current_controller->num_clients++;
}
