
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ate_resource {int num_ate; int * ate; } ;



__attribute__((used)) static int find_free_ate(struct ate_resource *ate_resource, int start,
    int count)
{
 u64 *ate = ate_resource->ate;
 int index;
 int start_free;

 for (index = start; index < ate_resource->num_ate;) {
  if (!ate[index]) {
   int i;
   int free;
   free = 0;
   start_free = index;
   for (i = start_free; i < ate_resource->num_ate; i++) {
    if (!ate[i]) {
     if (++free == count)
      return start_free;
    } else {
     index = i + 1;
     break;
    }
   }
   if (i >= ate_resource->num_ate)
    return -1;
  } else
   index++;
 }

 return -1;
}
