
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int word ;
typedef int byte ;
struct TYPE_5__ {int Size; } ;
struct TYPE_4__ {int Wrap; int * Tail; scalar_t__ Head; } ;
typedef TYPE_1__ MSG_QUEUE ;
typedef TYPE_2__ MSG_HEAD ;


 int MSG_INCOMPLETE ;

__attribute__((used)) static byte *queuePeekMsg (MSG_QUEUE *Q, word *size) {




 MSG_HEAD *Msg = (MSG_HEAD *)Q->Head;

 if (((byte *)Msg == Q->Tail && !Q->Wrap) ||
     (Msg->Size & MSG_INCOMPLETE)) {
  return ((void*)0);
 } else {
  *size = Msg->Size;
  return ((byte *)(Msg + 1));
 }
}
