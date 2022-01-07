
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ucma_multicast {int id; int uid; } ;
struct TYPE_6__ {int id; int uid; } ;
struct ucma_event {TYPE_3__ resp; struct ucma_multicast* mc; struct ucma_context* ctx; } ;
struct ucma_context {int id; int uid; } ;
struct TYPE_4__ {scalar_t__ private_data; } ;
struct TYPE_5__ {TYPE_1__ ud; } ;
struct rdma_cm_event {int event; TYPE_2__ param; } ;





__attribute__((used)) static void ucma_set_event_context(struct ucma_context *ctx,
       struct rdma_cm_event *event,
       struct ucma_event *uevent)
{
 uevent->ctx = ctx;
 switch (event->event) {
 case 128:
 case 129:
  uevent->mc = (struct ucma_multicast *)
        event->param.ud.private_data;
  uevent->resp.uid = uevent->mc->uid;
  uevent->resp.id = uevent->mc->id;
  break;
 default:
  uevent->resp.uid = ctx->uid;
  uevent->resp.id = ctx->id;
  break;
 }
}
