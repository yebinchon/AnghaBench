
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_file_private {int access_flags; } ;
struct agp_controller {struct agp_client* clients; } ;
struct agp_client {struct agp_client* next; int pid; } ;
struct TYPE_2__ {struct agp_controller* current_controller; } ;


 int AGP_FF_IS_CLIENT ;
 int AGP_FF_IS_VALID ;
 TYPE_1__ agp_fe ;
 struct agp_file_private* agp_find_private (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void agp_controller_make_current(struct agp_controller *controller)
{
 struct agp_client *clients;

 clients = controller->clients;

 while (clients != ((void*)0)) {
  struct agp_file_private *priv;

  priv = agp_find_private(clients->pid);

  if (priv != ((void*)0)) {
   set_bit(AGP_FF_IS_VALID, &priv->access_flags);
   set_bit(AGP_FF_IS_CLIENT, &priv->access_flags);
  }
  clients = clients->next;
 }

 agp_fe.current_controller = controller;
}
