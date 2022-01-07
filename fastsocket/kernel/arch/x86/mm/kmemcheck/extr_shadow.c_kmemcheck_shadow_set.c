
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KMEMCHECK_SHADOW_INITIALIZED ;

void kmemcheck_shadow_set(void *shadow, unsigned int size)
{
 uint8_t *x;
 unsigned int i;

 x = shadow;
 for (i = 0; i < size; ++i)
  x[i] = KMEMCHECK_SHADOW_INITIALIZED;
}
