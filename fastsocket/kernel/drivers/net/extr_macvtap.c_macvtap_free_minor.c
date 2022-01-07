
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macvlan_dev {scalar_t__ minor; } ;


 int idr_remove (int *,scalar_t__) ;
 int minor_idr ;
 int minor_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void macvtap_free_minor(struct macvlan_dev *vlan)
{
       mutex_lock(&minor_lock);
       if (vlan->minor) {
               idr_remove(&minor_idr, vlan->minor);
               vlan->minor = 0;
       }
       mutex_unlock(&minor_lock);
}
