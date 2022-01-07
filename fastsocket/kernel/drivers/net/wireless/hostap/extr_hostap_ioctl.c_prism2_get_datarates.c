
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_4__ {TYPE_1__* func; } ;
typedef TYPE_2__ local_info_t ;
typedef int buf ;
typedef int __le16 ;
struct TYPE_3__ {int (* get_rid ) (struct net_device*,int ,int *,int,int ) ;} ;


 int HFA384X_RID_SUPPORTEDDATARATES ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*,int ,int *,int,int ) ;

__attribute__((used)) static int prism2_get_datarates(struct net_device *dev, u8 *rates)
{
 struct hostap_interface *iface;
 local_info_t *local;
 u8 buf[12];
 int len;
 u16 val;

 iface = netdev_priv(dev);
 local = iface->local;

 len = local->func->get_rid(dev, HFA384X_RID_SUPPORTEDDATARATES, buf,
       sizeof(buf), 0);
 if (len < 2)
  return 0;

 val = le16_to_cpu(*(__le16 *) buf);

 if (len - 2 < val || val > 10)
  return 0;

 memcpy(rates, buf + 2, val);
 return val;
}
