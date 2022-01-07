
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct agp_memory {scalar_t__ key; scalar_t__ num_scratch_pages; int * pages; } ;


 int GFP_KERNEL ;
 int INT_MAX ;
 int agp_alloc_page_array (unsigned long,struct agp_memory*) ;
 int agp_free_key (scalar_t__) ;
 scalar_t__ agp_get_key () ;
 int kfree (struct agp_memory*) ;
 struct agp_memory* kzalloc (int,int ) ;

__attribute__((used)) static struct agp_memory *agp_create_user_memory(unsigned long num_agp_pages)
{
 struct agp_memory *new;
 unsigned long alloc_size = num_agp_pages*sizeof(struct page *);

 if (INT_MAX/sizeof(struct page *) < num_agp_pages)
  return ((void*)0);

 new = kzalloc(sizeof(struct agp_memory), GFP_KERNEL);
 if (new == ((void*)0))
  return ((void*)0);

 new->key = agp_get_key();

 if (new->key < 0) {
  kfree(new);
  return ((void*)0);
 }

 agp_alloc_page_array(alloc_size, new);

 if (new->pages == ((void*)0)) {
  agp_free_key(new->key);
  kfree(new);
  return ((void*)0);
 }
 new->num_scratch_pages = 0;
 return new;
}
