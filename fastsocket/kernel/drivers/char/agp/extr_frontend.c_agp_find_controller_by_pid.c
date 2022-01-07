
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_controller {scalar_t__ pid; struct agp_controller* next; } ;
typedef scalar_t__ pid_t ;
struct TYPE_2__ {struct agp_controller* controllers; } ;


 TYPE_1__ agp_fe ;

__attribute__((used)) static struct agp_controller *agp_find_controller_by_pid(pid_t id)
{
 struct agp_controller *controller;

 controller = agp_fe.controllers;

 while (controller != ((void*)0)) {
  if (controller->pid == id)
   return controller;
  controller = controller->next;
 }

 return ((void*)0);
}
