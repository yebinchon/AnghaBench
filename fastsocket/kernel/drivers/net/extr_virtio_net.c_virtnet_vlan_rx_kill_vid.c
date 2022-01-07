
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vid ;
typedef int u16 ;
struct virtnet_info {int dummy; } ;
struct scatterlist {int dummy; } ;
struct net_device {int dev; } ;


 int VIRTIO_NET_CTRL_VLAN ;
 int VIRTIO_NET_CTRL_VLAN_DEL ;
 int dev_warn (int *,char*,int ) ;
 struct virtnet_info* netdev_priv (struct net_device*) ;
 int sg_init_one (struct scatterlist*,int *,int) ;
 int virtnet_send_command (struct virtnet_info*,int ,int ,struct scatterlist*,int,int ) ;

__attribute__((used)) static void virtnet_vlan_rx_kill_vid(struct net_device *dev, u16 vid)
{
 struct virtnet_info *vi = netdev_priv(dev);
 struct scatterlist sg;

 sg_init_one(&sg, &vid, sizeof(vid));

 if (!virtnet_send_command(vi, VIRTIO_NET_CTRL_VLAN,
      VIRTIO_NET_CTRL_VLAN_DEL, &sg, 1, 0))
  dev_warn(&dev->dev, "Failed to kill VLAN ID %d.\n", vid);
}
