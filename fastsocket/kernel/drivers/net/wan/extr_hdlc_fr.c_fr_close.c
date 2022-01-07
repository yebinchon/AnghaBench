
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* next; scalar_t__ ether; scalar_t__ main; } ;
typedef TYPE_1__ pvc_device ;
typedef int hdlc_device ;
struct TYPE_4__ {TYPE_1__* first_pvc; } ;


 int dev_close (scalar_t__) ;
 int * dev_to_hdlc (struct net_device*) ;
 TYPE_2__* state (int *) ;

__attribute__((used)) static void fr_close(struct net_device *dev)
{
 hdlc_device *hdlc = dev_to_hdlc(dev);
 pvc_device *pvc = state(hdlc)->first_pvc;

 while (pvc) {
  if (pvc->main)
   dev_close(pvc->main);
  if (pvc->ether)
   dev_close(pvc->ether);
  pvc = pvc->next;
 }
}
