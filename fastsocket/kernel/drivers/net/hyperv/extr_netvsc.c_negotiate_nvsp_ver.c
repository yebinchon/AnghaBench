
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_15__ {int ieee8021q; } ;
struct TYPE_16__ {TYPE_6__ capability; int mtu; } ;
struct TYPE_17__ {TYPE_7__ send_ndis_config; } ;
struct TYPE_11__ {scalar_t__ status; } ;
struct TYPE_10__ {scalar_t__ max_protocol_ver; scalar_t__ min_protocol_ver; } ;
struct TYPE_12__ {TYPE_2__ init_complete; TYPE_1__ init; } ;
struct TYPE_18__ {TYPE_8__ v2_msg; TYPE_3__ init_msg; } ;
struct TYPE_13__ {int msg_type; } ;
struct nvsp_message {TYPE_9__ msg; TYPE_4__ hdr; } ;
struct netvsc_device {TYPE_5__* ndev; int channel_init_wait; } ;
struct hv_device {int channel; } ;
struct TYPE_14__ {int mtu; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int HZ ;
 int NVSP_MSG2_TYPE_SEND_NDIS_CONFIG ;
 int NVSP_MSG_TYPE_INIT ;
 scalar_t__ NVSP_PROTOCOL_VERSION_2 ;
 scalar_t__ NVSP_STAT_SUCCESS ;
 int VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ;
 int VM_PKT_DATA_INBAND ;
 int memset (struct nvsp_message*,int ,int) ;
 int vmbus_sendpacket (int ,struct nvsp_message*,int,unsigned long,int ,int ) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int negotiate_nvsp_ver(struct hv_device *device,
         struct netvsc_device *net_device,
         struct nvsp_message *init_packet,
         u32 nvsp_ver)
{
 int ret, t;

 memset(init_packet, 0, sizeof(struct nvsp_message));
 init_packet->hdr.msg_type = NVSP_MSG_TYPE_INIT;
 init_packet->msg.init_msg.init.min_protocol_ver = nvsp_ver;
 init_packet->msg.init_msg.init.max_protocol_ver = nvsp_ver;


 ret = vmbus_sendpacket(device->channel, init_packet,
          sizeof(struct nvsp_message),
          (unsigned long)init_packet,
          VM_PKT_DATA_INBAND,
          VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);

 if (ret != 0)
  return ret;

 t = wait_for_completion_timeout(&net_device->channel_init_wait, 5*HZ);

 if (t == 0)
  return -ETIMEDOUT;

 if (init_packet->msg.init_msg.init_complete.status !=
     NVSP_STAT_SUCCESS)
  return -EINVAL;

 if (nvsp_ver != NVSP_PROTOCOL_VERSION_2)
  return 0;


 memset(init_packet, 0, sizeof(struct nvsp_message));
 init_packet->hdr.msg_type = NVSP_MSG2_TYPE_SEND_NDIS_CONFIG;
 init_packet->msg.v2_msg.send_ndis_config.mtu = net_device->ndev->mtu;
 init_packet->msg.v2_msg.send_ndis_config.capability.ieee8021q = 1;

 ret = vmbus_sendpacket(device->channel, init_packet,
    sizeof(struct nvsp_message),
    (unsigned long)init_packet,
    VM_PKT_DATA_INBAND, 0);

 return ret;
}
