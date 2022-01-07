
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct synthhid_protocol_request {int dummy; } ;
struct pipe_prt_msg {int dummy; } ;
struct TYPE_8__ {int approved; } ;
struct TYPE_6__ {int version; } ;
struct TYPE_5__ {int size; int type; } ;
struct TYPE_7__ {TYPE_2__ version_requested; TYPE_1__ header; } ;
struct mousevsc_prt_msg {int size; TYPE_4__ response; TYPE_3__ request; int type; } ;
struct mousevsc_dev {int dev_info_status; int wait_event; struct mousevsc_prt_msg protocol_resp; struct mousevsc_prt_msg protocol_req; } ;
struct hv_device {int channel; } ;


 int ENODEV ;
 int ETIMEDOUT ;
 int HZ ;
 int PIPE_MESSAGE_DATA ;
 int SYNTHHID_INPUT_VERSION ;
 int SYNTH_HID_PROTOCOL_REQUEST ;
 int VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ;
 int VM_PKT_DATA_INBAND ;
 struct mousevsc_dev* hv_get_drvdata (struct hv_device*) ;
 int memset (struct mousevsc_prt_msg*,int ,int) ;
 int pr_err (char*,int ) ;
 int vmbus_sendpacket (int ,struct mousevsc_prt_msg*,int,unsigned long,int ,int ) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int mousevsc_connect_to_vsp(struct hv_device *device)
{
 int ret = 0;
 int t;
 struct mousevsc_dev *input_dev = hv_get_drvdata(device);
 struct mousevsc_prt_msg *request;
 struct mousevsc_prt_msg *response;

 request = &input_dev->protocol_req;
 memset(request, 0, sizeof(struct mousevsc_prt_msg));

 request->type = PIPE_MESSAGE_DATA;
 request->size = sizeof(struct synthhid_protocol_request);
 request->request.header.type = SYNTH_HID_PROTOCOL_REQUEST;
 request->request.header.size = sizeof(unsigned int);
 request->request.version_requested.version = SYNTHHID_INPUT_VERSION;

 ret = vmbus_sendpacket(device->channel, request,
    sizeof(struct pipe_prt_msg) -
    sizeof(unsigned char) +
    sizeof(struct synthhid_protocol_request),
    (unsigned long)request,
    VM_PKT_DATA_INBAND,
    VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);
 if (ret)
  goto cleanup;

 t = wait_for_completion_timeout(&input_dev->wait_event, 5*HZ);
 if (!t) {
  ret = -ETIMEDOUT;
  goto cleanup;
 }

 response = &input_dev->protocol_resp;

 if (!response->response.approved) {
  pr_err("synthhid protocol request failed (version %d)\n",
         SYNTHHID_INPUT_VERSION);
  ret = -ENODEV;
  goto cleanup;
 }

 t = wait_for_completion_timeout(&input_dev->wait_event, 5*HZ);
 if (!t) {
  ret = -ETIMEDOUT;
  goto cleanup;
 }





 ret = input_dev->dev_info_status;

cleanup:
 return ret;
}
