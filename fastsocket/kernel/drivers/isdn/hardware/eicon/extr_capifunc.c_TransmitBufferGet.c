
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t dword ;
struct TYPE_3__ {void** xbuffer_internal; void** xbuffer_ptr; } ;
typedef TYPE_1__ APPL ;



void *TransmitBufferGet(APPL * appl, void *p)
{
 if (appl->xbuffer_internal[(dword)(long)p])
  return appl->xbuffer_internal[(dword)(long)p];

 return appl->xbuffer_ptr[(dword)(long)p];
}
