
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct net_device {TYPE_3__* ml_priv; } ;
struct TYPE_9__ {int active; } ;
struct TYPE_10__ {TYPE_2__ state; TYPE_6__* frad; int open_count; } ;
typedef TYPE_3__ pvc_device ;
typedef int hdlc_device ;
struct TYPE_12__ {int flags; } ;
struct TYPE_8__ {scalar_t__ lmi; } ;
struct TYPE_11__ {int dce_changed; TYPE_1__ settings; } ;


 int EIO ;
 int IFF_UP ;
 scalar_t__ LMI_NONE ;
 int * dev_to_hdlc (TYPE_6__*) ;
 int netif_carrier_ok (TYPE_6__*) ;
 int pvc_carrier (int ,TYPE_3__*) ;
 TYPE_4__* state (int *) ;

__attribute__((used)) static int pvc_open(struct net_device *dev)
{
 pvc_device *pvc = dev->ml_priv;

 if ((pvc->frad->flags & IFF_UP) == 0)
  return -EIO;

 if (pvc->open_count++ == 0) {
  hdlc_device *hdlc = dev_to_hdlc(pvc->frad);
  if (state(hdlc)->settings.lmi == LMI_NONE)
   pvc->state.active = netif_carrier_ok(pvc->frad);

  pvc_carrier(pvc->state.active, pvc);
  state(hdlc)->dce_changed = 1;
 }
 return 0;
}
