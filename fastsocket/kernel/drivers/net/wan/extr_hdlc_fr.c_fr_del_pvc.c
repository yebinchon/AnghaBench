
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int flags; } ;
typedef int pvc_device ;
typedef int hdlc_device ;
struct TYPE_2__ {int dce_changed; int dce_pvc_count; } ;


 int EBUSY ;
 int ENOENT ;
 int IFF_UP ;
 int delete_unused_pvcs (int *) ;
 int * find_pvc (int *,unsigned int) ;
 struct net_device** get_dev_p (int *,int) ;
 int pvc_is_used (int *) ;
 TYPE_1__* state (int *) ;
 int unregister_netdevice (struct net_device*) ;

__attribute__((used)) static int fr_del_pvc(hdlc_device *hdlc, unsigned int dlci, int type)
{
 pvc_device *pvc;
 struct net_device *dev;

 if ((pvc = find_pvc(hdlc, dlci)) == ((void*)0))
  return -ENOENT;

 if ((dev = *get_dev_p(pvc, type)) == ((void*)0))
  return -ENOENT;

 if (dev->flags & IFF_UP)
  return -EBUSY;

 unregister_netdevice(dev);
 *get_dev_p(pvc, type) = ((void*)0);

 if (!pvc_is_used(pvc)) {
  state(hdlc)->dce_pvc_count--;
  state(hdlc)->dce_changed = 1;
 }
 delete_unused_pvcs(hdlc);
 return 0;
}
