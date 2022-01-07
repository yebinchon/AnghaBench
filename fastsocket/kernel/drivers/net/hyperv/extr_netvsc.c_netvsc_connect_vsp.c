
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ndis_major_ver; int ndis_minor_ver; } ;
struct TYPE_7__ {TYPE_2__ send_ndis_ver; } ;
struct TYPE_8__ {TYPE_3__ v1_msg; } ;
struct TYPE_5__ {int msg_type; } ;
struct nvsp_message {TYPE_4__ msg; TYPE_1__ hdr; } ;
struct netvsc_device {void* nvsp_version; struct nvsp_message channel_init_pkt; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct hv_device {int channel; } ;


 int ENODEV ;
 int EPROTO ;
 int NVSP_MSG1_TYPE_SEND_NDIS_VER ;
 void* NVSP_PROTOCOL_VERSION_1 ;
 void* NVSP_PROTOCOL_VERSION_2 ;
 int VM_PKT_DATA_INBAND ;
 struct netvsc_device* get_outbound_net_device (struct hv_device*) ;
 int memset (struct nvsp_message*,int ,int) ;
 scalar_t__ negotiate_nvsp_ver (struct hv_device*,struct netvsc_device*,struct nvsp_message*,void*) ;
 int netvsc_init_recv_buf (struct hv_device*) ;
 int pr_debug (char*,void*) ;
 int vmbus_sendpacket (int ,struct nvsp_message*,int,unsigned long,int ,int ) ;

__attribute__((used)) static int netvsc_connect_vsp(struct hv_device *device)
{
 int ret;
 struct netvsc_device *net_device;
 struct nvsp_message *init_packet;
 int ndis_version;
 struct net_device *ndev;

 net_device = get_outbound_net_device(device);
 if (!net_device)
  return -ENODEV;
 ndev = net_device->ndev;

 init_packet = &net_device->channel_init_pkt;


 if (negotiate_nvsp_ver(device, net_device, init_packet,
          NVSP_PROTOCOL_VERSION_2) == 0) {
  net_device->nvsp_version = NVSP_PROTOCOL_VERSION_2;
 } else if (negotiate_nvsp_ver(device, net_device, init_packet,
        NVSP_PROTOCOL_VERSION_1) == 0) {
  net_device->nvsp_version = NVSP_PROTOCOL_VERSION_1;
 } else {
  ret = -EPROTO;
  goto cleanup;
 }

 pr_debug("Negotiated NVSP version:%x\n", net_device->nvsp_version);


 memset(init_packet, 0, sizeof(struct nvsp_message));

 ndis_version = 0x00050001;

 init_packet->hdr.msg_type = NVSP_MSG1_TYPE_SEND_NDIS_VER;
 init_packet->msg.v1_msg.
  send_ndis_ver.ndis_major_ver =
    (ndis_version & 0xFFFF0000) >> 16;
 init_packet->msg.v1_msg.
  send_ndis_ver.ndis_minor_ver =
    ndis_version & 0xFFFF;


 ret = vmbus_sendpacket(device->channel, init_packet,
    sizeof(struct nvsp_message),
    (unsigned long)init_packet,
    VM_PKT_DATA_INBAND, 0);
 if (ret != 0)
  goto cleanup;


 ret = netvsc_init_recv_buf(device);

cleanup:
 return ret;
}
