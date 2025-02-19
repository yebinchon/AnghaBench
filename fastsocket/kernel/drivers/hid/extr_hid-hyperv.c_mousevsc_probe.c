
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int version; int product; int vendor; } ;
struct mousevsc_dev {int* report_desc; int connected; int init_complete; struct hid_device* hid_device; TYPE_1__ hid_dev_info; } ;
struct hv_vmbus_device_id {int dummy; } ;
struct hv_device {int channel; } ;
struct hid_device {int name; int version; int product; int vendor; int bus; int * driver; int * ll_driver; } ;


 int BUS_VIRTUAL ;
 int ENOMEM ;
 int HID_CONNECT_HIDDEV ;
 int HID_CONNECT_HIDINPUT ;
 int INPUTVSC_RECV_RING_BUFFER_SIZE ;
 int INPUTVSC_SEND_RING_BUFFER_SIZE ;
 scalar_t__ IS_ERR (struct hid_device*) ;
 int PTR_ERR (struct hid_device*) ;
 int hid_add_device (struct hid_device*) ;
 struct hid_device* hid_allocate_device () ;
 int hid_destroy_device (struct hid_device*) ;
 int hid_err (struct hid_device*,char*) ;
 int hid_hw_start (struct hid_device*,int) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,struct hv_device*) ;
 struct mousevsc_dev* mousevsc_alloc_device (struct hv_device*) ;
 int mousevsc_connect_to_vsp (struct hv_device*) ;
 int mousevsc_free_device (struct mousevsc_dev*) ;
 int mousevsc_hid_driver ;
 int mousevsc_ll_driver ;
 int mousevsc_on_channel_callback ;
 int sprintf (int ,char*,char*) ;
 int vmbus_close (int ) ;
 int vmbus_open (int ,int ,int ,int *,int ,int ,struct hv_device*) ;

__attribute__((used)) static int mousevsc_probe(struct hv_device *device,
   const struct hv_vmbus_device_id *dev_id)
{
 int ret;
 struct mousevsc_dev *input_dev;
 struct hid_device *hid_dev;

 input_dev = mousevsc_alloc_device(device);

 if (!input_dev)
  return -ENOMEM;

 ret = vmbus_open(device->channel,
  INPUTVSC_SEND_RING_BUFFER_SIZE,
  INPUTVSC_RECV_RING_BUFFER_SIZE,
  ((void*)0),
  0,
  mousevsc_on_channel_callback,
  device
  );

 if (ret)
  goto probe_err0;

 ret = mousevsc_connect_to_vsp(device);

 if (ret)
  goto probe_err1;


 if (input_dev->report_desc[14] == 0x25)
  input_dev->report_desc[14] = 0x29;

 hid_dev = hid_allocate_device();
 if (IS_ERR(hid_dev)) {
  ret = PTR_ERR(hid_dev);
  goto probe_err1;
 }

 hid_dev->ll_driver = &mousevsc_ll_driver;
 hid_dev->driver = &mousevsc_hid_driver;
 hid_dev->bus = BUS_VIRTUAL;
 hid_dev->vendor = input_dev->hid_dev_info.vendor;
 hid_dev->product = input_dev->hid_dev_info.product;
 hid_dev->version = input_dev->hid_dev_info.version;
 input_dev->hid_device = hid_dev;

 sprintf(hid_dev->name, "%s", "Microsoft Vmbus HID-compliant Mouse");

 hid_set_drvdata(hid_dev, device);

 ret = hid_add_device(hid_dev);
 if (ret)
  goto probe_err1;


 ret = hid_parse(hid_dev);
 if (ret) {
  hid_err(hid_dev, "parse failed\n");
  goto probe_err2;
 }

 ret = hid_hw_start(hid_dev, HID_CONNECT_HIDINPUT | HID_CONNECT_HIDDEV);

 if (ret) {
  hid_err(hid_dev, "hw start failed\n");
  goto probe_err2;
 }

 input_dev->connected = 1;
 input_dev->init_complete = 1;

 return ret;

probe_err2:
 hid_destroy_device(hid_dev);

probe_err1:
 vmbus_close(device->channel);

probe_err0:
 mousevsc_free_device(input_dev);

 return ret;
}
