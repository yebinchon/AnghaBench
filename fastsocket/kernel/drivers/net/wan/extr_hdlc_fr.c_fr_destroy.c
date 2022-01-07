
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ ether; scalar_t__ main; struct TYPE_4__* next; } ;
typedef TYPE_1__ pvc_device ;
typedef int hdlc_device ;
struct TYPE_5__ {int dce_changed; scalar_t__ dce_pvc_count; TYPE_1__* first_pvc; } ;


 int * dev_to_hdlc (struct net_device*) ;
 int kfree (TYPE_1__*) ;
 TYPE_2__* state (int *) ;
 int unregister_netdevice (scalar_t__) ;

__attribute__((used)) static void fr_destroy(struct net_device *frad)
{
 hdlc_device *hdlc = dev_to_hdlc(frad);
 pvc_device *pvc = state(hdlc)->first_pvc;
 state(hdlc)->first_pvc = ((void*)0);
 state(hdlc)->dce_pvc_count = 0;
 state(hdlc)->dce_changed = 1;

 while (pvc) {
  pvc_device *next = pvc->next;

  if (pvc->main)
   unregister_netdevice(pvc->main);

  if (pvc->ether)
   unregister_netdevice(pvc->ether);

  kfree(pvc);
  pvc = next;
 }
}
