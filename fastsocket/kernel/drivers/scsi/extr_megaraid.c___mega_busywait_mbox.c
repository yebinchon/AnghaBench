
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int busy; } ;
struct TYPE_6__ {TYPE_1__ m_in; } ;
typedef TYPE_2__ mbox_t ;
struct TYPE_7__ {TYPE_2__* mbox; } ;
typedef TYPE_3__ adapter_t ;


 int cond_resched () ;
 int udelay (int) ;

__attribute__((used)) static int
__mega_busywait_mbox (adapter_t *adapter)
{
 volatile mbox_t *mbox = adapter->mbox;
 long counter;

 for (counter = 0; counter < 10000; counter++) {
  if (!mbox->m_in.busy)
   return 0;
  udelay(100);
  cond_resched();
 }
 return -1;
}
