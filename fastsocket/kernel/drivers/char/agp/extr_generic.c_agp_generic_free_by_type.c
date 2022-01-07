
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory {int key; } ;


 int agp_free_key (int ) ;
 int agp_free_page_array (struct agp_memory*) ;
 int kfree (struct agp_memory*) ;

void agp_generic_free_by_type(struct agp_memory *curr)
{
 agp_free_page_array(curr);
 agp_free_key(curr->key);
 kfree(curr);
}
