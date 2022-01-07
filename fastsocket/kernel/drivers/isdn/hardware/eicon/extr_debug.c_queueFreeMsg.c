
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int word ;
struct TYPE_5__ {int Size; } ;
struct TYPE_4__ {scalar_t__ Head; scalar_t__ Wrap; scalar_t__ Base; scalar_t__ Tail; int Count; } ;
typedef TYPE_1__ MSG_QUEUE ;
typedef TYPE_2__ MSG_HEAD ;


 int MSG_INCOMPLETE ;
 scalar_t__ MSG_NEED (int) ;

__attribute__((used)) static void queueFreeMsg (MSG_QUEUE *Q) {


 word size = ((MSG_HEAD *)Q->Head)->Size & ~MSG_INCOMPLETE;

 Q->Head += MSG_NEED(size);
 Q->Count -= size;

 if (Q->Wrap) {
  if (Q->Head >= Q->Wrap) {
   Q->Head = Q->Base;
   Q->Wrap = ((void*)0);
  }
 } else if (Q->Head >= Q->Tail) {
  Q->Head = Q->Tail = Q->Base;
 }
}
