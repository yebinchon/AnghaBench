
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ate_resource {void* lowest_free_index; } ;


 void* find_free_ate (struct ate_resource*,void*,int) ;
 int mark_ate (struct ate_resource*,int,int,int) ;

__attribute__((used)) static inline int alloc_ate_resource(struct ate_resource *ate_resource,
         int ate_needed)
{
 int start_index;




 if (ate_resource->lowest_free_index < 0)
  return -1;




 start_index =
     find_free_ate(ate_resource, ate_resource->lowest_free_index,
     ate_needed);
 if (start_index >= 0)
  mark_ate(ate_resource, start_index, ate_needed, ate_needed);

 ate_resource->lowest_free_index =
     find_free_ate(ate_resource, ate_resource->lowest_free_index, 1);

 return start_index;
}
