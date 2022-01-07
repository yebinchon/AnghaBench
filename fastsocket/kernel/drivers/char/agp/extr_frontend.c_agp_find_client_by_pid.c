
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_client {int dummy; } ;
typedef int pid_t ;
struct TYPE_2__ {int * current_controller; } ;


 TYPE_1__ agp_fe ;
 struct agp_client* agp_find_client_in_controller (int *,int ) ;

struct agp_client *agp_find_client_by_pid(pid_t id)
{
 struct agp_client *temp;

 if (agp_fe.current_controller == ((void*)0))
  return ((void*)0);

 temp = agp_find_client_in_controller(agp_fe.current_controller, id);
 return temp;
}
