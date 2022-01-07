
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* mbox; } ;
typedef TYPE_3__ adapter_t ;
struct TYPE_6__ {scalar_t__ busy; } ;
struct TYPE_7__ {TYPE_1__ m_in; } ;


 int __mega_busywait_mbox (TYPE_3__*) ;

__attribute__((used)) static inline int
mega_busywait_mbox (adapter_t *adapter)
{
 if (adapter->mbox->m_in.busy)
  return __mega_busywait_mbox(adapter);
 return 0;
}
