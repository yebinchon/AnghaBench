
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory {struct agp_memory* next; } ;
struct agp_controller {struct agp_memory* pool; } ;


 int agp_free_memory_wrap (struct agp_memory*) ;

__attribute__((used)) static void agp_remove_all_memory(struct agp_controller *controller)
{
 struct agp_memory *memory;
 struct agp_memory *temp;

 memory = controller->pool;

 while (memory) {
  temp = memory;
  memory = memory->next;
  agp_free_memory_wrap(temp);
 }
}
