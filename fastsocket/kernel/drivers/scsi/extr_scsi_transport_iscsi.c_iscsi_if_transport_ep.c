
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ep_handle; } ;
struct TYPE_8__ {int timeout_ms; int ep_handle; } ;
struct TYPE_7__ {TYPE_2__ ep_disconnect; TYPE_4__ ep_poll; } ;
struct TYPE_5__ {int retcode; } ;
struct iscsi_uevent {TYPE_3__ u; TYPE_1__ r; } ;
struct iscsi_transport {int (* ep_poll ) (struct iscsi_endpoint*,int ) ;} ;
struct iscsi_endpoint {int dummy; } ;


 int EINVAL ;




 int iscsi_if_ep_connect (struct iscsi_transport*,struct iscsi_uevent*,int) ;
 int iscsi_if_ep_disconnect (struct iscsi_transport*,int ) ;
 struct iscsi_endpoint* iscsi_lookup_endpoint (int ) ;
 int stub1 (struct iscsi_endpoint*,int ) ;

__attribute__((used)) static int
iscsi_if_transport_ep(struct iscsi_transport *transport,
        struct iscsi_uevent *ev, int msg_type)
{
 struct iscsi_endpoint *ep;
 int rc = 0;

 switch (msg_type) {
 case 130:
 case 131:
  rc = iscsi_if_ep_connect(transport, ev, msg_type);
  break;
 case 128:
  if (!transport->ep_poll)
   return -EINVAL;

  ep = iscsi_lookup_endpoint(ev->u.ep_poll.ep_handle);
  if (!ep)
   return -EINVAL;

  ev->r.retcode = transport->ep_poll(ep,
         ev->u.ep_poll.timeout_ms);
  break;
 case 129:
  rc = iscsi_if_ep_disconnect(transport,
         ev->u.ep_disconnect.ep_handle);
  break;
 }
 return rc;
}
