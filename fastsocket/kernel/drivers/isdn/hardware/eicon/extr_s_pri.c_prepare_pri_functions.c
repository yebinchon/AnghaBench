
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int MemorySize; } ;
typedef TYPE_1__* PISDN_ADAPTER ;


 int MP_MEMORY_SIZE ;
 int diva_os_prepare_pri_functions (TYPE_1__*) ;
 int prepare_common_pri_functions (TYPE_1__*) ;

void prepare_pri_functions (PISDN_ADAPTER IoAdapter) {
 IoAdapter->MemorySize = MP_MEMORY_SIZE ;
 prepare_common_pri_functions (IoAdapter) ;
 diva_os_prepare_pri_functions (IoAdapter);
}
