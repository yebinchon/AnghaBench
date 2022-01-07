
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* value; int key; } ;
typedef TYPE_1__ KeyValuePair ;


 scalar_t__ strcmp (int ,char const*) ;

char *fdfs_http_get_parameter(const char *param_name, KeyValuePair *params, const int param_count)

{
 KeyValuePair *pCurrent;
 KeyValuePair *pEnd;

 pEnd = params + param_count;
 for (pCurrent=params; pCurrent<pEnd; pCurrent++)
 {
  if (strcmp(pCurrent->key, param_name) == 0)
  {
   return pCurrent->value;
  }
 }

 return ((void*)0);
}
