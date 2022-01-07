
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct i2c_client {int dummy; } ;
struct TYPE_6__ {int audio_codec; scalar_t__ audio_input; scalar_t__ video_input; } ;
struct hdpvr_device {size_t bulk_in_size; scalar_t__ workqueue; int i2c_adapter; int video_dev; int v4l2_dev; int io_mutex; scalar_t__ bulk_in_endpointAddr; int udev; TYPE_3__ options; int rec_buff_list; int free_buff_list; int wait_data; int wait_buffer; int usbc_buf; int usbc_mutex; int i2c_mutex; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HDPVR_AUDIO_INPUTS ;
 scalar_t__ HDPVR_SPDIF ;
 scalar_t__ HDPVR_VIDEO_INPUTS ;
 int INIT_LIST_HEAD (int *) ;
 int NUM_BUFFERS ;
 int V4L2_MPEG_AUDIO_ENCODING_AC3 ;
 size_t atomic_inc_return (int *) ;
 scalar_t__ create_singlethread_workqueue (char*) ;
 scalar_t__ default_audio_input ;
 scalar_t__ default_video_input ;
 int destroy_workqueue (scalar_t__) ;
 int dev_nr ;
 int err (char*) ;
 scalar_t__ hdpvr_alloc_buffers (struct hdpvr_device*,int ) ;
 TYPE_3__ hdpvr_default_options ;
 int hdpvr_delete (struct hdpvr_device*) ;
 scalar_t__ hdpvr_device_init (struct hdpvr_device*) ;
 int hdpvr_register_i2c_adapter (struct hdpvr_device*) ;
 struct i2c_client* hdpvr_register_ir_rx_i2c (struct hdpvr_device*) ;
 struct i2c_client* hdpvr_register_ir_tx_i2c (struct hdpvr_device*) ;
 scalar_t__ hdpvr_register_videodev (struct hdpvr_device*,int *,int ) ;
 int i2c_del_adapter (int *) ;
 int init_waitqueue_head (int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kmalloc (int,int ) ;
 struct hdpvr_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ usb_endpoint_is_bulk_in (struct usb_endpoint_descriptor*) ;
 int usb_get_dev (int ) ;
 scalar_t__ v4l2_device_register (int *,int *) ;
 int v4l2_err (int *,char*) ;
 int v4l2_info (int *,char*,int ) ;
 int video_device_node_name (int ) ;
 int * video_nr ;

__attribute__((used)) static int hdpvr_probe(struct usb_interface *interface,
         const struct usb_device_id *id)
{
 struct hdpvr_device *dev;
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 struct i2c_client *client;
 size_t buffer_size;
 int i;
 int retval = -ENOMEM;


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  err("Out of memory");
  goto error;
 }

 dev->workqueue = 0;


 if (v4l2_device_register(&interface->dev, &dev->v4l2_dev)) {
  err("v4l2_device_register failed");
  goto error;
 }

 mutex_init(&dev->io_mutex);
 mutex_init(&dev->i2c_mutex);
 mutex_init(&dev->usbc_mutex);
 dev->usbc_buf = kmalloc(64, GFP_KERNEL);
 if (!dev->usbc_buf) {
  v4l2_err(&dev->v4l2_dev, "Out of memory\n");
  goto error;
 }

 init_waitqueue_head(&dev->wait_buffer);
 init_waitqueue_head(&dev->wait_data);

 dev->workqueue = create_singlethread_workqueue("hdpvr_buffer");
 if (!dev->workqueue)
  goto error;


 INIT_LIST_HEAD(&dev->free_buff_list);
 INIT_LIST_HEAD(&dev->rec_buff_list);

 dev->options = hdpvr_default_options;

 if (default_video_input < HDPVR_VIDEO_INPUTS)
  dev->options.video_input = default_video_input;

 if (default_audio_input < HDPVR_AUDIO_INPUTS) {
  dev->options.audio_input = default_audio_input;
  if (default_audio_input == HDPVR_SPDIF)
   dev->options.audio_codec =
    V4L2_MPEG_AUDIO_ENCODING_AC3;
 }

 dev->udev = usb_get_dev(interface_to_usbdev(interface));



 iface_desc = interface->cur_altsetting;
 for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
  endpoint = &iface_desc->endpoint[i].desc;

  if (!dev->bulk_in_endpointAddr &&
      usb_endpoint_is_bulk_in(endpoint)) {


   buffer_size = 8192;
   dev->bulk_in_size = buffer_size;
   dev->bulk_in_endpointAddr = endpoint->bEndpointAddress;
  }

 }
 if (!dev->bulk_in_endpointAddr) {
  v4l2_err(&dev->v4l2_dev, "Could not find bulk-in endpoint\n");
  goto error;
 }


 if (hdpvr_device_init(dev)) {
  v4l2_err(&dev->v4l2_dev, "device init failed\n");
  goto error;
 }

 mutex_lock(&dev->io_mutex);
 if (hdpvr_alloc_buffers(dev, NUM_BUFFERS)) {
  mutex_unlock(&dev->io_mutex);
  v4l2_err(&dev->v4l2_dev,
    "allocating transfer buffers failed\n");
  goto error;
 }
 mutex_unlock(&dev->io_mutex);

 if (hdpvr_register_videodev(dev, &interface->dev,
        video_nr[atomic_inc_return(&dev_nr)])) {
  v4l2_err(&dev->v4l2_dev, "registering videodev failed\n");
  goto error;
 }
 v4l2_info(&dev->v4l2_dev, "device now attached to %s\n",
    video_device_node_name(dev->video_dev));
 return 0;

reg_fail:



error:
 if (dev) {

  if (dev->workqueue)
   destroy_workqueue(dev->workqueue);

  hdpvr_delete(dev);
 }
 return retval;
}
