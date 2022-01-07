
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isdn_ppp_compressor {struct isdn_ppp_compressor* prev; struct isdn_ppp_compressor* next; } ;


 struct isdn_ppp_compressor* ipc_head ;

int isdn_ppp_register_compressor(struct isdn_ppp_compressor *ipc)
{
 ipc->next = ipc_head;
 ipc->prev = ((void*)0);
 if(ipc_head) {
  ipc_head->prev = ipc;
 }
 ipc_head = ipc;
 return 0;
}
