
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vmpacket_descriptor {int type; } ;
struct netvsc_device {struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct hv_device {int channel; } ;


 int ENOBUFS ;
 int GFP_ATOMIC ;
 int NETVSC_PACKET_SIZE ;


 struct netvsc_device* get_inbound_net_device (struct hv_device*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 unsigned char* kzalloc (int,int ) ;
 int netdev_err (struct net_device*,char*,int,...) ;
 int netvsc_receive (struct hv_device*,struct vmpacket_descriptor*) ;
 int netvsc_send_completion (struct hv_device*,struct vmpacket_descriptor*) ;
 int vmbus_recvpacket_raw (int ,unsigned char*,int,int*,int *) ;

__attribute__((used)) static void netvsc_channel_cb(void *context)
{
 int ret;
 struct hv_device *device = context;
 struct netvsc_device *net_device;
 u32 bytes_recvd;
 u64 request_id;
 unsigned char *packet;
 struct vmpacket_descriptor *desc;
 unsigned char *buffer;
 int bufferlen = NETVSC_PACKET_SIZE;
 struct net_device *ndev;

 packet = kzalloc(NETVSC_PACKET_SIZE * sizeof(unsigned char),
    GFP_ATOMIC);
 if (!packet)
  return;
 buffer = packet;

 net_device = get_inbound_net_device(device);
 if (!net_device)
  goto out;
 ndev = net_device->ndev;

 do {
  ret = vmbus_recvpacket_raw(device->channel, buffer, bufferlen,
        &bytes_recvd, &request_id);
  if (ret == 0) {
   if (bytes_recvd > 0) {
    desc = (struct vmpacket_descriptor *)buffer;
    switch (desc->type) {
    case 129:
     netvsc_send_completion(device, desc);
     break;

    case 128:
     netvsc_receive(device, desc);
     break;

    default:
     netdev_err(ndev,
         "unhandled packet type %d, "
         "tid %llx len %d\n",
         desc->type, request_id,
         bytes_recvd);
     break;
    }


    if (bufferlen > NETVSC_PACKET_SIZE) {
     kfree(buffer);
     buffer = packet;
     bufferlen = NETVSC_PACKET_SIZE;
    }
   } else {

    if (bufferlen > NETVSC_PACKET_SIZE) {
     kfree(buffer);
     buffer = packet;
     bufferlen = NETVSC_PACKET_SIZE;
    }

    break;
   }
  } else if (ret == -ENOBUFS) {

   buffer = kmalloc(bytes_recvd, GFP_ATOMIC);
   if (buffer == ((void*)0)) {

    netdev_err(ndev,
        "unable to allocate buffer of size "
        "(%d)!!\n", bytes_recvd);
    break;
   }

   bufferlen = bytes_recvd;
  }
 } while (1);

out:
 kfree(buffer);
 return;
}
