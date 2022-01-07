
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isdn_ppp_compressor {TYPE_2__* next; TYPE_1__* prev; } ;
struct TYPE_4__ {TYPE_1__* prev; } ;
struct TYPE_3__ {TYPE_2__* next; } ;


 TYPE_2__* ipc_head ;

int isdn_ppp_unregister_compressor(struct isdn_ppp_compressor *ipc)
{
 if(ipc->prev)
  ipc->prev->next = ipc->next;
 else
  ipc_head = ipc->next;
 if(ipc->next)
  ipc->next->prev = ipc->prev;
 ipc->prev = ipc->next = ((void*)0);
 return 0;
}
