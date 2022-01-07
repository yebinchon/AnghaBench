
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_4__ {size_t generic_elem_len; int dev; TYPE_1__* func; int * generic_elem; } ;
typedef TYPE_2__ local_info_t ;
typedef int __le16 ;
struct TYPE_3__ {int (* set_rid ) (int ,int ,int *,size_t) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HFA384X_RID_GENERICELEMENT ;
 int cpu_to_le16 (size_t) ;
 int kfree (int *) ;
 int * kmalloc (size_t,int ) ;
 int memcpy (int *,int *,size_t) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int stub1 (int ,int ,int *,size_t) ;

__attribute__((used)) static int prism2_set_genericelement(struct net_device *dev, u8 *elem,
         size_t len)
{
 struct hostap_interface *iface = netdev_priv(dev);
 local_info_t *local = iface->local;
 u8 *buf;





 buf = kmalloc(len + 2, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 *((__le16 *) buf) = cpu_to_le16(len);
 memcpy(buf + 2, elem, len);

 kfree(local->generic_elem);
 local->generic_elem = buf;
 local->generic_elem_len = len + 2;

 return local->func->set_rid(local->dev, HFA384X_RID_GENERICELEMENT,
        buf, len + 2);
}
