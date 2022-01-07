
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data_transfer_length; int sense_info_length; scalar_t__ length; } ;
struct vstor_packet {int operation; TYPE_1__ vm_srb; int flags; } ;
struct vmscsi_request {int dummy; } ;
struct vmbus_channel {int dummy; } ;
struct storvsc_device {int num_outstanding_req; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct storvsc_cmd_request {TYPE_2__ data_buffer; struct hv_device* device; struct vstor_packet vstor_packet; } ;
struct hv_device {int channel; } ;


 int ENODEV ;
 int REQUEST_COMPLETION_FLAG ;
 int VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ;
 int VM_PKT_DATA_INBAND ;
 int VSTOR_OPERATION_EXECUTE_SRB ;
 int atomic_inc (int *) ;
 struct storvsc_device* get_out_stor_device (struct hv_device*) ;
 int sense_buffer_size ;
 struct vmbus_channel* vmbus_get_outgoing_channel (int ) ;
 int vmbus_sendpacket (int ,struct vstor_packet*,scalar_t__,unsigned long,int ,int ) ;
 int vmbus_sendpacket_multipagebuffer (struct vmbus_channel*,TYPE_2__*,struct vstor_packet*,scalar_t__,unsigned long) ;
 scalar_t__ vmscsi_size_delta ;

__attribute__((used)) static int storvsc_do_io(struct hv_device *device,
         struct storvsc_cmd_request *request)
{
 struct storvsc_device *stor_device;
 struct vstor_packet *vstor_packet;
 struct vmbus_channel *outgoing_channel;
 int ret = 0;

 vstor_packet = &request->vstor_packet;
 stor_device = get_out_stor_device(device);

 if (!stor_device)
  return -ENODEV;


 request->device = device;




 outgoing_channel = vmbus_get_outgoing_channel(device->channel);


 vstor_packet->flags |= REQUEST_COMPLETION_FLAG;

 vstor_packet->vm_srb.length = (sizeof(struct vmscsi_request) -
     vmscsi_size_delta);


 vstor_packet->vm_srb.sense_info_length = sense_buffer_size;


 vstor_packet->vm_srb.data_transfer_length =
 request->data_buffer.len;

 vstor_packet->operation = VSTOR_OPERATION_EXECUTE_SRB;

 if (request->data_buffer.len) {
  ret = vmbus_sendpacket_multipagebuffer(outgoing_channel,
    &request->data_buffer,
    vstor_packet,
    (sizeof(struct vstor_packet) -
    vmscsi_size_delta),
    (unsigned long)request);
 } else {
  ret = vmbus_sendpacket(device->channel, vstor_packet,
          (sizeof(struct vstor_packet) -
    vmscsi_size_delta),
          (unsigned long)request,
          VM_PKT_DATA_INBAND,
          VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);
 }

 if (ret != 0)
  return ret;

 atomic_inc(&stor_device->num_outstanding_req);

 return ret;
}
