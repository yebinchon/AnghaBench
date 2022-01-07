
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int MemorySize; scalar_t__ tasks; } ;
typedef TYPE_1__* PISDN_ADAPTER ;


 scalar_t__ MQ_INSTANCE_COUNT ;
 int MQ_MEMORY_SIZE ;
 int diva_os_set_qBri_functions (TYPE_1__*) ;
 int set_common_qBri_functions (TYPE_1__*) ;

__attribute__((used)) static void set_qBri_functions (PISDN_ADAPTER IoAdapter) {
 if (!IoAdapter->tasks) {
  IoAdapter->tasks = MQ_INSTANCE_COUNT;
 }
 IoAdapter->MemorySize = MQ_MEMORY_SIZE ;
 set_common_qBri_functions (IoAdapter) ;
 diva_os_set_qBri_functions (IoAdapter) ;
}
