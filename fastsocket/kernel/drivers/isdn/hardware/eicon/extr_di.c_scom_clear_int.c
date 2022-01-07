
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* ram_out ) (TYPE_1__*,void*,int ) ;} ;
typedef TYPE_1__ ADAPTER ;


 int stub1 (TYPE_1__*,void*,int ) ;

void scom_clear_int(ADAPTER * a)
{
  a->ram_out(a,(void *)0x3fe,0);
}
