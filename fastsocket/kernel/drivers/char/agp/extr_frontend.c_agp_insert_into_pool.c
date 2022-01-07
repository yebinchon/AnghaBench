
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct agp_memory {struct agp_memory* next; struct agp_memory* prev; } ;
struct TYPE_4__ {TYPE_1__* current_controller; } ;
struct TYPE_3__ {struct agp_memory* pool; } ;


 TYPE_2__ agp_fe ;

__attribute__((used)) static void agp_insert_into_pool(struct agp_memory * temp)
{
 struct agp_memory *prev;

 prev = agp_fe.current_controller->pool;

 if (prev != ((void*)0)) {
  prev->prev = temp;
  temp->next = prev;
 }
 agp_fe.current_controller->pool = temp;
}
