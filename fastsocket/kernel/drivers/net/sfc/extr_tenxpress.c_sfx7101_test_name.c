
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 unsigned int ARRAY_SIZE (char const**) ;
 char const** sfx7101_test_names ;

__attribute__((used)) static const char *sfx7101_test_name(struct efx_nic *efx, unsigned int index)
{
 if (index < ARRAY_SIZE(sfx7101_test_names))
  return sfx7101_test_names[index];
 return ((void*)0);
}
