
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int cq_context; int (* comp_handler ) (TYPE_1__*,int ) ;} ;
struct ipath_cq {scalar_t__ triggered; TYPE_1__ ibcq; } ;


 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void send_complete(unsigned long data)
{
 struct ipath_cq *cq = (struct ipath_cq *)data;
 for (;;) {
  u8 triggered = cq->triggered;

  cq->ibcq.comp_handler(&cq->ibcq, cq->ibcq.cq_context);

  if (cq->triggered == triggered)
   return;
 }
}
