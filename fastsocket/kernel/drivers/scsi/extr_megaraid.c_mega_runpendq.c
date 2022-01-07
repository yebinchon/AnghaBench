
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pending_list; } ;
typedef TYPE_1__ adapter_t ;


 int __mega_runpendq (TYPE_1__*) ;
 int list_empty (int *) ;

__attribute__((used)) static inline void
mega_runpendq(adapter_t *adapter)
{
 if(!list_empty(&adapter->pending_list))
  __mega_runpendq(adapter);
}
