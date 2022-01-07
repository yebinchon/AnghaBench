
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dword ;
typedef int byte ;
struct TYPE_3__ {int Size; scalar_t__ Count; int * Wrap; int * High; int * Tail; int * Head; int * Base; } ;
typedef TYPE_1__ MSG_QUEUE ;



__attribute__((used)) static void queueInit (MSG_QUEUE *Q, byte *Buffer, dword sizeBuffer) {
 Q->Size = sizeBuffer;
 Q->Base = Q->Head = Q->Tail = Buffer;
 Q->High = Buffer + sizeBuffer;
 Q->Wrap = ((void*)0);
 Q->Count= 0;
}
