
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmpacket_descriptor {int offset8; } ;
struct TYPE_4__ {int type; int size; } ;
struct synthhid_msg {TYPE_2__ header; } ;
struct TYPE_3__ {int size; } ;
struct synthhid_input_report {TYPE_1__ header; int buffer; } ;
struct synthhid_device_info {int dummy; } ;
struct pipe_prt_msg {scalar_t__ type; int size; scalar_t__ data; } ;
struct mousevsc_prt_msg {int dummy; } ;
struct mousevsc_dev {int hid_device; int init_complete; int wait_event; int protocol_resp; } ;
struct hv_input_dev_info {int dummy; } ;
struct hv_device {int dummy; } ;


 int HID_INPUT_REPORT ;
 scalar_t__ PIPE_MESSAGE_DATA ;



 int WARN_ON (int) ;
 int complete (int *) ;
 int hid_input_report (int ,int ,int ,int ,int) ;
 struct mousevsc_dev* hv_get_drvdata (struct hv_device*) ;
 int memcpy (int *,struct pipe_prt_msg*,int ) ;
 int mousevsc_on_receive_device_info (struct mousevsc_dev*,struct synthhid_device_info*) ;
 int pr_err (char*,int,int ) ;

__attribute__((used)) static void mousevsc_on_receive(struct hv_device *device,
    struct vmpacket_descriptor *packet)
{
 struct pipe_prt_msg *pipe_msg;
 struct synthhid_msg *hid_msg;
 struct mousevsc_dev *input_dev = hv_get_drvdata(device);
 struct synthhid_input_report *input_report;

 pipe_msg = (struct pipe_prt_msg *)((unsigned long)packet +
      (packet->offset8 << 3));

 if (pipe_msg->type != PIPE_MESSAGE_DATA)
  return;

 hid_msg = (struct synthhid_msg *)pipe_msg->data;

 switch (hid_msg->header.type) {
 case 128:





  if ((pipe_msg->size + sizeof(struct pipe_prt_msg)
   - sizeof(unsigned char))
   > sizeof(struct mousevsc_prt_msg)) {
   WARN_ON(1);
   break;
  }

  memcpy(&input_dev->protocol_resp, pipe_msg,
         pipe_msg->size + sizeof(struct pipe_prt_msg) -
         sizeof(unsigned char));
  complete(&input_dev->wait_event);
  break;

 case 130:
  WARN_ON(pipe_msg->size < sizeof(struct hv_input_dev_info));





  mousevsc_on_receive_device_info(input_dev,
   (struct synthhid_device_info *)pipe_msg->data);
  break;
 case 129:
  input_report =
   (struct synthhid_input_report *)pipe_msg->data;
  if (!input_dev->init_complete)
   break;
  hid_input_report(input_dev->hid_device,
    HID_INPUT_REPORT, input_report->buffer,
    input_report->header.size, 1);
  break;
 default:
  pr_err("unsupported hid msg type - type %d len %d",
         hid_msg->header.type, hid_msg->header.size);
  break;
 }

}
