
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ate_resource {int lowest_free_index; int * ate; } ;


 int mark_ate (struct ate_resource*,int,int ,int ) ;

__attribute__((used)) static inline void free_ate_resource(struct ate_resource *ate_resource,
         int start)
{
 mark_ate(ate_resource, start, ate_resource->ate[start], 0);
 if ((ate_resource->lowest_free_index > start) ||
     (ate_resource->lowest_free_index < 0))
  ate_resource->lowest_free_index = start;
}
