
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ReceiveBuffer; int MaxDataLength; } ;
typedef TYPE_1__ APPL ;



void *ReceiveBufferGet(APPL * appl, int Num)
{
 return &appl->ReceiveBuffer[Num * appl->MaxDataLength];
}
