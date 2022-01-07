
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxlan_sock {int dummy; } ;
struct vxlan_net {int dummy; } ;
struct TYPE_2__ {int remote_ip; } ;
struct vxlan_dev {int age_timer; int igmp_leave; TYPE_1__ default_dst; struct vxlan_sock* vn_sock; } ;
struct net_device {int dummy; } ;


 scalar_t__ IN_MULTICAST (int ) ;
 int del_timer_sync (int *) ;
 int dev_hold (struct net_device*) ;
 int dev_net (struct net_device*) ;
 struct vxlan_net* net_generic (int ,int ) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int ntohl (int ) ;
 int queue_work (int ,int *) ;
 int vxlan_flush (struct vxlan_dev*) ;
 int vxlan_group_used (struct vxlan_net*,int ) ;
 int vxlan_net_id ;
 int vxlan_sock_hold (struct vxlan_sock*) ;
 int vxlan_wq ;

__attribute__((used)) static int vxlan_stop(struct net_device *dev)
{
 struct vxlan_net *vn = net_generic(dev_net(dev), vxlan_net_id);
 struct vxlan_dev *vxlan = netdev_priv(dev);
 struct vxlan_sock *vs = vxlan->vn_sock;

 if (vs && IN_MULTICAST(ntohl(vxlan->default_dst.remote_ip)) &&
     ! vxlan_group_used(vn, vxlan->default_dst.remote_ip)) {
  vxlan_sock_hold(vs);
  dev_hold(dev);
  queue_work(vxlan_wq, &vxlan->igmp_leave);
 }

 del_timer_sync(&vxlan->age_timer);

 vxlan_flush(vxlan);

 return 0;
}
