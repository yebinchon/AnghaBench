
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ate_resource {int * ate; } ;



__attribute__((used)) static void mark_ate(struct ate_resource *ate_resource, int start, int number,
       u64 value)
{
 u64 *ate = ate_resource->ate;
 int index;
 int length = 0;

 for (index = start; length < number; index++, length++)
  ate[index] = value;
}
