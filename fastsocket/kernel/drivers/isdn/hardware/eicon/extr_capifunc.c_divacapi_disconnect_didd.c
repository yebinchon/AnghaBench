
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int (* request ) (int *) ;} ;
struct TYPE_7__ {int handle; } ;
struct TYPE_6__ {int Rc; scalar_t__ Req; } ;
struct TYPE_8__ {TYPE_2__ info; TYPE_1__ e; } ;
struct TYPE_9__ {TYPE_3__ didd_notify; } ;
typedef TYPE_4__ IDI_SYNC_REQ ;
typedef int ENTITY ;


 TYPE_5__ DAdapter ;
 int IDI_SYNC_REQ_DIDD_REMOVE_ADAPTER_NOTIFY ;
 int notify_handle ;
 int stop_dbg () ;
 int stub1 (int *) ;

__attribute__((used)) static void divacapi_disconnect_didd(void)
{
 IDI_SYNC_REQ req;

 stop_dbg();

 req.didd_notify.e.Req = 0;
 req.didd_notify.e.Rc = IDI_SYNC_REQ_DIDD_REMOVE_ADAPTER_NOTIFY;
 req.didd_notify.info.handle = notify_handle;
 DAdapter.request((ENTITY *) & req);
}
