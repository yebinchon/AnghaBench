
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ word ;
typedef int byte ;
struct TYPE_5__ {scalar_t__ Size; } ;
struct TYPE_4__ {scalar_t__ Tail; scalar_t__ Head; scalar_t__ Wrap; scalar_t__ Size; scalar_t__ High; scalar_t__ Base; scalar_t__ Count; } ;
typedef TYPE_1__ MSG_QUEUE ;
typedef TYPE_2__ MSG_HEAD ;


 scalar_t__ MSG_INCOMPLETE ;
 scalar_t__ MSG_NEED (scalar_t__) ;

__attribute__((used)) static byte *queueAllocMsg (MSG_QUEUE *Q, word size) {
 MSG_HEAD *Msg;
 word need = MSG_NEED(size);

 if (Q->Tail == Q->Head) {
  if (Q->Wrap || need > Q->Size) {
   return ((void*)0);
  }
  goto alloc;
 }

 if (Q->Tail > Q->Head) {
  if (Q->Tail + need <= Q->High) goto alloc;
  if (Q->Base + need > Q->Head) {
   return ((void*)0);
  }

  Q->Wrap = Q->Tail;
  Q->Tail = Q->Base;
  goto alloc;
 }

 if (Q->Tail + need > Q->Head) {
  return ((void*)0);
 }

alloc:
 Msg = (MSG_HEAD *)Q->Tail;

 Msg->Size = size | MSG_INCOMPLETE;

 Q->Tail += need;
 Q->Count += size;



 return ((byte*)(Msg + 1));
}
