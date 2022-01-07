
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int io; } ;
struct TYPE_14__ {int * RBuffer; } ;
struct TYPE_13__ {int P; int length; } ;
struct TYPE_11__ {int length; int P; } ;
struct TYPE_12__ {TYPE_1__ RBuffer; } ;
typedef TYPE_2__* PISDN_ADAPTER ;
typedef TYPE_3__ PBUFFER ;
typedef TYPE_4__ ENTITY ;
typedef int DBUFFER ;
typedef TYPE_5__ ADAPTER ;


 int mem_in_buffer (TYPE_5__*,int ,int ,int ) ;
 int mem_inw (TYPE_5__*,int *) ;

void mem_look_ahead (ADAPTER *a, PBUFFER *RBuffer, ENTITY *e)
{
 PISDN_ADAPTER IoAdapter = (PISDN_ADAPTER)a->io ;
 IoAdapter->RBuffer.length = mem_inw (a, &RBuffer->length) ;
 mem_in_buffer (a, RBuffer->P, IoAdapter->RBuffer.P,
                IoAdapter->RBuffer.length) ;
 e->RBuffer = (DBUFFER *)&IoAdapter->RBuffer ;
}
