
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxlan_sock {int dummy; } ;
struct vxlan_net {int dummy; } ;
struct TYPE_2__ {int remote_ip; } ;
struct vxlan_dev {int age_timer; scalar_t__ age_interval; int igmp_join; TYPE_1__ default_dst; struct vxlan_sock* vn_sock; } ;
struct net_device {int dummy; } ;


 int ENOTCONN ;
 scalar_t__ FDB_AGE_INTERVAL ;
 scalar_t__ IN_MULTICAST (int ) ;
 int dev_hold (struct net_device*) ;
 int dev_net (struct net_device*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct vxlan_net* net_generic (int ,int ) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int ntohl (int ) ;
 int queue_work (int ,int *) ;
 scalar_t__ vxlan_group_used (struct vxlan_net*,int ) ;
 int vxlan_net_id ;
 int vxlan_sock_hold (struct vxlan_sock*) ;
 int vxlan_wq ;

__attribute__((used)) static int vxlan_open(struct net_device *dev)
{
 struct vxlan_net *vn = net_generic(dev_net(dev), vxlan_net_id);
 struct vxlan_dev *vxlan = netdev_priv(dev);
 struct vxlan_sock *vs = vxlan->vn_sock;


 if (!vs)
  return -ENOTCONN;

 if (IN_MULTICAST(ntohl(vxlan->default_dst.remote_ip)) &&
     vxlan_group_used(vn, vxlan->default_dst.remote_ip)) {
  vxlan_sock_hold(vs);
  dev_hold(dev);
  queue_work(vxlan_wq, &vxlan->igmp_join);
 }

 if (vxlan->age_interval)
  mod_timer(&vxlan->age_timer, jiffies + FDB_AGE_INTERVAL);

 return 0;
}
