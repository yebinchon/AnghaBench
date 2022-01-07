
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Id; } ;
typedef TYPE_1__ DIVA_CAPI_ADAPTER ;


 int MAX_DESCRIPTORS ;
 TYPE_1__* adapter ;

__attribute__((used)) static int find_free_id(void)
{
 int num = 0;
 DIVA_CAPI_ADAPTER *a;

 while (num < MAX_DESCRIPTORS) {
  a = &adapter[num];
  if (!a->Id)
   break;
  num++;
 }
 return(num + 1);
}
