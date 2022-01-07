
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ status; int num_sections; int sections; } ;
struct TYPE_8__ {int id; int gpadl_handle; } ;
struct TYPE_10__ {TYPE_3__ send_recv_buf_complete; TYPE_2__ send_recv_buf; } ;
struct TYPE_11__ {TYPE_4__ v1_msg; } ;
struct TYPE_7__ {int msg_type; } ;
struct nvsp_message {TYPE_5__ msg; TYPE_1__ hdr; } ;
struct nvsp_1_receive_buffer_section {int dummy; } ;
struct netvsc_device {scalar_t__ recv_buf_size; int recv_section_cnt; TYPE_6__* recv_section; int channel_init_wait; int recv_buf_gpadl_handle; struct nvsp_message channel_init_pkt; void* recv_buf; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct hv_device {int channel; } ;
struct TYPE_12__ {scalar_t__ offset; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int NETVSC_RECEIVE_BUFFER_ID ;
 int NVSP_MSG1_TYPE_SEND_RECV_BUF ;
 scalar_t__ NVSP_STAT_SUCCESS ;
 int VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ;
 int VM_PKT_DATA_INBAND ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int ) ;
 int get_order (scalar_t__) ;
 struct netvsc_device* get_outbound_net_device (struct hv_device*) ;
 TYPE_6__* kmemdup (int ,int,int) ;
 int memset (struct nvsp_message*,int ,int) ;
 int netdev_err (struct net_device*,char*,...) ;
 int netvsc_destroy_recv_buf (struct netvsc_device*) ;
 int vmbus_establish_gpadl (int ,void*,scalar_t__,int *) ;
 int vmbus_sendpacket (int ,struct nvsp_message*,int,unsigned long,int ,int ) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int netvsc_init_recv_buf(struct hv_device *device)
{
 int ret = 0;
 int t;
 struct netvsc_device *net_device;
 struct nvsp_message *init_packet;
 struct net_device *ndev;

 net_device = get_outbound_net_device(device);
 if (!net_device)
  return -ENODEV;
 ndev = net_device->ndev;

 net_device->recv_buf =
  (void *)__get_free_pages(GFP_KERNEL|__GFP_ZERO,
    get_order(net_device->recv_buf_size));
 if (!net_device->recv_buf) {
  netdev_err(ndev, "unable to allocate receive "
   "buffer of size %d\n", net_device->recv_buf_size);
  ret = -ENOMEM;
  goto cleanup;
 }






 ret = vmbus_establish_gpadl(device->channel, net_device->recv_buf,
        net_device->recv_buf_size,
        &net_device->recv_buf_gpadl_handle);
 if (ret != 0) {
  netdev_err(ndev,
   "unable to establish receive buffer's gpadl\n");
  goto cleanup;
 }



 init_packet = &net_device->channel_init_pkt;

 memset(init_packet, 0, sizeof(struct nvsp_message));

 init_packet->hdr.msg_type = NVSP_MSG1_TYPE_SEND_RECV_BUF;
 init_packet->msg.v1_msg.send_recv_buf.
  gpadl_handle = net_device->recv_buf_gpadl_handle;
 init_packet->msg.v1_msg.
  send_recv_buf.id = NETVSC_RECEIVE_BUFFER_ID;


 ret = vmbus_sendpacket(device->channel, init_packet,
          sizeof(struct nvsp_message),
          (unsigned long)init_packet,
          VM_PKT_DATA_INBAND,
          VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);
 if (ret != 0) {
  netdev_err(ndev,
   "unable to send receive buffer's gpadl to netvsp\n");
  goto cleanup;
 }

 t = wait_for_completion_timeout(&net_device->channel_init_wait, 5*HZ);
 BUG_ON(t == 0);



 if (init_packet->msg.v1_msg.
     send_recv_buf_complete.status != NVSP_STAT_SUCCESS) {
  netdev_err(ndev, "Unable to complete receive buffer "
      "initialization with NetVsp - status %d\n",
      init_packet->msg.v1_msg.
      send_recv_buf_complete.status);
  ret = -EINVAL;
  goto cleanup;
 }



 net_device->recv_section_cnt = init_packet->msg.
  v1_msg.send_recv_buf_complete.num_sections;

 net_device->recv_section = kmemdup(
  init_packet->msg.v1_msg.send_recv_buf_complete.sections,
  net_device->recv_section_cnt *
  sizeof(struct nvsp_1_receive_buffer_section),
  GFP_KERNEL);
 if (net_device->recv_section == ((void*)0)) {
  ret = -EINVAL;
  goto cleanup;
 }





 if (net_device->recv_section_cnt != 1 ||
     net_device->recv_section->offset != 0) {
  ret = -EINVAL;
  goto cleanup;
 }

 goto exit;

cleanup:
 netvsc_destroy_recv_buf(net_device);

exit:
 return ret;
}
