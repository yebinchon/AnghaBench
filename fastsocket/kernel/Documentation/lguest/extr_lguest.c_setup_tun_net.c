
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct virtio_net_config {int mac; } ;
struct net_info {int tunfd; } ;
struct device {struct net_info* priv; } ;
typedef int conf ;
struct TYPE_2__ {int device_num; } ;


 int BRIDGE_PFX ;
 int IFNAMSIZ ;
 int INADDR_ANY ;
 int IPPROTO_IP ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int VIRTIO_F_NOTIFY_ON_EMPTY ;
 int VIRTIO_ID_NET ;
 int VIRTIO_NET_F_CSUM ;
 int VIRTIO_NET_F_GUEST_CSUM ;
 int VIRTIO_NET_F_GUEST_ECN ;
 int VIRTIO_NET_F_GUEST_TSO4 ;
 int VIRTIO_NET_F_GUEST_TSO6 ;
 int VIRTIO_NET_F_HOST_ECN ;
 int VIRTIO_NET_F_HOST_TSO4 ;
 int VIRTIO_NET_F_HOST_TSO6 ;
 int VIRTIO_NET_F_MAC ;
 int VIRTIO_RING_F_INDIRECT_DESC ;
 int VIRTQUEUE_NUM ;
 int add_feature (struct device*,int ) ;
 int add_to_bridge (int,char*,char*) ;
 int add_virtqueue (struct device*,int ,int ) ;
 int close (int) ;
 int configure_device (int,char*,int ) ;
 TYPE_1__ devices ;
 int err (int,char*) ;
 int get_tun_device (char*) ;
 struct net_info* malloc (int) ;
 int net_input ;
 int net_output ;
 struct device* new_device (char*,int ) ;
 int set_config (struct device*,int,struct virtio_net_config*) ;
 int socket (int ,int ,int ) ;
 int str2ip (char*) ;
 int str2mac (char*,int ) ;
 char* strchr (char*,char) ;
 int strlen (int ) ;
 int strncmp (int ,char*,int ) ;
 int verbose (char*,int ,char*,char*) ;

__attribute__((used)) static void setup_tun_net(char *arg)
{
 struct device *dev;
 struct net_info *net_info = malloc(sizeof(*net_info));
 int ipfd;
 u32 ip = INADDR_ANY;
 bool bridging = 0;
 char tapif[IFNAMSIZ], *p;
 struct virtio_net_config conf;

 net_info->tunfd = get_tun_device(tapif);


 dev = new_device("net", VIRTIO_ID_NET);
 dev->priv = net_info;


 add_virtqueue(dev, VIRTQUEUE_NUM, net_input);
 add_virtqueue(dev, VIRTQUEUE_NUM, net_output);





 ipfd = socket(PF_INET, SOCK_DGRAM, IPPROTO_IP);
 if (ipfd < 0)
  err(1, "opening IP socket");


 if (!strncmp(BRIDGE_PFX, arg, strlen(BRIDGE_PFX))) {
  arg += strlen(BRIDGE_PFX);
  bridging = 1;
 }


 p = strchr(arg, ':');
 if (p) {
  str2mac(p+1, conf.mac);
  add_feature(dev, VIRTIO_NET_F_MAC);
  *p = '\0';
 }


 if (bridging)
  add_to_bridge(ipfd, tapif, arg);
 else
  ip = str2ip(arg);


 configure_device(ipfd, tapif, ip);

 add_feature(dev, VIRTIO_F_NOTIFY_ON_EMPTY);

 add_feature(dev, VIRTIO_NET_F_CSUM);
 add_feature(dev, VIRTIO_NET_F_GUEST_CSUM);
 add_feature(dev, VIRTIO_NET_F_GUEST_TSO4);
 add_feature(dev, VIRTIO_NET_F_GUEST_TSO6);
 add_feature(dev, VIRTIO_NET_F_GUEST_ECN);
 add_feature(dev, VIRTIO_NET_F_HOST_TSO4);
 add_feature(dev, VIRTIO_NET_F_HOST_TSO6);
 add_feature(dev, VIRTIO_NET_F_HOST_ECN);

 add_feature(dev, VIRTIO_RING_F_INDIRECT_DESC);
 set_config(dev, sizeof(conf), &conf);


 close(ipfd);

 devices.device_num++;

 if (bridging)
  verbose("device %u: tun %s attached to bridge: %s\n",
   devices.device_num, tapif, arg);
 else
  verbose("device %u: tun %s: %s\n",
   devices.device_num, tapif, arg);
}
