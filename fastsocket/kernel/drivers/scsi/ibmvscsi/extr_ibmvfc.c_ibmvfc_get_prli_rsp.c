
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int code; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* prli_rsp ;

__attribute__((used)) static int ibmvfc_get_prli_rsp(u16 flags)
{
 int i;
 int code = (flags & 0x0f00) >> 8;

 for (i = 0; i < ARRAY_SIZE(prli_rsp); i++)
  if (prli_rsp[i].code == code)
   return i;

 return 0;
}
