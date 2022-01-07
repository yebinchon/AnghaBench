
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef enum kmemcheck_shadow { ____Placeholder_kmemcheck_shadow } kmemcheck_shadow ;


 scalar_t__ KMEMCHECK_SHADOW_INITIALIZED ;

enum kmemcheck_shadow kmemcheck_shadow_test(void *shadow, unsigned int size)
{
 uint8_t *x;
 unsigned int i;

 x = shadow;
 for (i = 0; i < size; ++i) {
  if (x[i] != KMEMCHECK_SHADOW_INITIALIZED)
   return x[i];
 }


 return x[0];
}
