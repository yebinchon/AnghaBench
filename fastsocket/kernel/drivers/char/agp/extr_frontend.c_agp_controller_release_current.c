
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_file_private {int access_flags; } ;
struct agp_controller {struct agp_client* clients; } ;
struct agp_client {struct agp_client* next; int pid; } ;
struct TYPE_2__ {int used_by_controller; int * current_controller; } ;


 int AGP_FF_IS_VALID ;
 int agp_backend_release (int ) ;
 int agp_bridge ;
 TYPE_1__ agp_fe ;
 struct agp_file_private* agp_find_private (int ) ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static void agp_controller_release_current(struct agp_controller *controller,
          struct agp_file_private *controller_priv)
{
 struct agp_client *clients;

 clear_bit(AGP_FF_IS_VALID, &controller_priv->access_flags);
 clients = controller->clients;

 while (clients != ((void*)0)) {
  struct agp_file_private *priv;

  priv = agp_find_private(clients->pid);

  if (priv != ((void*)0))
   clear_bit(AGP_FF_IS_VALID, &priv->access_flags);

  clients = clients->next;
 }

 agp_fe.current_controller = ((void*)0);
 agp_fe.used_by_controller = 0;
 agp_backend_release(agp_bridge);
}
