
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kmemcheck_shadow { ____Placeholder_kmemcheck_shadow } kmemcheck_shadow ;


 int KMEMCHECK_SHADOW_INITIALIZED ;
 void* kmemcheck_shadow_lookup (unsigned long) ;
 int kmemcheck_shadow_test (void*,size_t) ;

bool kmemcheck_is_obj_initialized(unsigned long addr, size_t size)
{
 enum kmemcheck_shadow status;
 void *shadow;

 shadow = kmemcheck_shadow_lookup(addr);
 if (!shadow)
  return 1;

 status = kmemcheck_shadow_test(shadow, size);

 return status == KMEMCHECK_SHADOW_INITIALIZED;
}
