
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_controller {struct agp_controller* prev; struct agp_controller* next; } ;
struct TYPE_2__ {struct agp_controller* controllers; } ;


 TYPE_1__ agp_fe ;

__attribute__((used)) static int agp_insert_controller(struct agp_controller *controller)
{
 struct agp_controller *prev_controller;

 prev_controller = agp_fe.controllers;
 controller->next = prev_controller;

 if (prev_controller != ((void*)0))
  prev_controller->prev = controller;

 agp_fe.controllers = controller;

 return 0;
}
