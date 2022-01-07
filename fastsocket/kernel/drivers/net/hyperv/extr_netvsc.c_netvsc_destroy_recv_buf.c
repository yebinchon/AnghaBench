
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int id; } ;
struct TYPE_8__ {TYPE_2__ revoke_recv_buf; } ;
struct TYPE_9__ {TYPE_3__ v1_msg; } ;
struct TYPE_6__ {int msg_type; } ;
struct nvsp_message {TYPE_4__ msg; TYPE_1__ hdr; } ;
struct netvsc_device {int * recv_section; scalar_t__ recv_section_cnt; int * recv_buf; int recv_buf_size; scalar_t__ recv_buf_gpadl_handle; TYPE_5__* dev; struct nvsp_message revoke_packet; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct TYPE_10__ {int channel; } ;


 int NETVSC_RECEIVE_BUFFER_ID ;
 int NVSP_MSG1_TYPE_REVOKE_RECV_BUF ;
 int VM_PKT_DATA_INBAND ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;
 int kfree (int *) ;
 int memset (struct nvsp_message*,int ,int) ;
 int netdev_err (struct net_device*,char*) ;
 int vmbus_sendpacket (int ,struct nvsp_message*,int,unsigned long,int ,int ) ;
 int vmbus_teardown_gpadl (int ,scalar_t__) ;

__attribute__((used)) static int netvsc_destroy_recv_buf(struct netvsc_device *net_device)
{
 struct nvsp_message *revoke_packet;
 int ret = 0;
 struct net_device *ndev = net_device->ndev;







 if (net_device->recv_section_cnt) {

  revoke_packet = &net_device->revoke_packet;
  memset(revoke_packet, 0, sizeof(struct nvsp_message));

  revoke_packet->hdr.msg_type =
   NVSP_MSG1_TYPE_REVOKE_RECV_BUF;
  revoke_packet->msg.v1_msg.
  revoke_recv_buf.id = NETVSC_RECEIVE_BUFFER_ID;

  ret = vmbus_sendpacket(net_device->dev->channel,
           revoke_packet,
           sizeof(struct nvsp_message),
           (unsigned long)revoke_packet,
           VM_PKT_DATA_INBAND, 0);




  if (ret != 0) {
   netdev_err(ndev, "unable to send "
    "revoke receive buffer to netvsp\n");
   return ret;
  }
 }


 if (net_device->recv_buf_gpadl_handle) {
  ret = vmbus_teardown_gpadl(net_device->dev->channel,
      net_device->recv_buf_gpadl_handle);




  if (ret != 0) {
   netdev_err(ndev,
       "unable to teardown receive buffer's gpadl\n");
   return ret;
  }
  net_device->recv_buf_gpadl_handle = 0;
 }

 if (net_device->recv_buf) {

  free_pages((unsigned long)net_device->recv_buf,
   get_order(net_device->recv_buf_size));
  net_device->recv_buf = ((void*)0);
 }

 if (net_device->recv_section) {
  net_device->recv_section_cnt = 0;
  kfree(net_device->recv_section);
  net_device->recv_section = ((void*)0);
 }

 return ret;
}
