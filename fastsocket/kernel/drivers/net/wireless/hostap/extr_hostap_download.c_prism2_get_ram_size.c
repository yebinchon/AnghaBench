
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* func; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_6__ {int (* genesis_reset ) (TYPE_2__*,int) ;} ;


 scalar_t__ prism2_enable_genesis (TYPE_2__*,int) ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static int prism2_get_ram_size(local_info_t *local)
{
 int ret;


 if (prism2_enable_genesis(local, 0x1f) == 0)
  ret = 8;
 else if (prism2_enable_genesis(local, 0x0f) == 0)
  ret = 16;
 else
  ret = -1;


 local->func->genesis_reset(local, ret == 16 ? 0x07 : 0x17);

 return ret;
}
