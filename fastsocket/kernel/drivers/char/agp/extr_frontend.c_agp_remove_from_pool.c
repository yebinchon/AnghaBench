
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct agp_memory {struct agp_memory* prev; struct agp_memory* next; int key; } ;
struct TYPE_4__ {TYPE_1__* current_controller; } ;
struct TYPE_3__ {struct agp_memory* pool; } ;


 int DBG (char*,struct agp_memory*) ;
 TYPE_2__ agp_fe ;
 int * agp_find_mem_by_key (int ) ;

__attribute__((used)) static void agp_remove_from_pool(struct agp_memory *temp)
{
 struct agp_memory *prev;
 struct agp_memory *next;



 DBG("mem=%p", temp);
 if (agp_find_mem_by_key(temp->key) != ((void*)0)) {
  next = temp->next;
  prev = temp->prev;

  if (prev != ((void*)0)) {
   prev->next = next;
   if (next != ((void*)0))
    next->prev = prev;

  } else {

   if (next != ((void*)0))
    next->prev = ((void*)0);

   agp_fe.current_controller->pool = next;
  }
 }
}
