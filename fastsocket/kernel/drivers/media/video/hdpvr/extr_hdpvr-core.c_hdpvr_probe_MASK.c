#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct i2c_client {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  audio_codec; scalar_t__ audio_input; scalar_t__ video_input; } ;
struct hdpvr_device {size_t bulk_in_size; scalar_t__ workqueue; int /*<<< orphan*/  i2c_adapter; int /*<<< orphan*/  video_dev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  io_mutex; scalar_t__ bulk_in_endpointAddr; int /*<<< orphan*/  udev; TYPE_3__ options; int /*<<< orphan*/  rec_buff_list; int /*<<< orphan*/  free_buff_list; int /*<<< orphan*/  wait_data; int /*<<< orphan*/  wait_buffer; int /*<<< orphan*/  usbc_buf; int /*<<< orphan*/  usbc_mutex; int /*<<< orphan*/  i2c_mutex; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HDPVR_AUDIO_INPUTS ; 
 scalar_t__ HDPVR_SPDIF ; 
 scalar_t__ HDPVR_VIDEO_INPUTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NUM_BUFFERS ; 
 int /*<<< orphan*/  V4L2_MPEG_AUDIO_ENCODING_AC3 ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ default_audio_input ; 
 scalar_t__ default_video_input ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  dev_nr ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct hdpvr_device*,int /*<<< orphan*/ ) ; 
 TYPE_3__ hdpvr_default_options ; 
 int /*<<< orphan*/  FUNC6 (struct hdpvr_device*) ; 
 scalar_t__ FUNC7 (struct hdpvr_device*) ; 
 int FUNC8 (struct hdpvr_device*) ; 
 struct i2c_client* FUNC9 (struct hdpvr_device*) ; 
 struct i2c_client* FUNC10 (struct hdpvr_device*) ; 
 scalar_t__ FUNC11 (struct hdpvr_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 struct hdpvr_device* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * video_nr ; 

__attribute__((used)) static int FUNC26(struct usb_interface *interface,
		       const struct usb_device_id *id)
{
	struct hdpvr_device *dev;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	struct i2c_client *client;
	size_t buffer_size;
	int i;
	int retval = -ENOMEM;

	/* allocate memory for our device state and initialize it */
	dev = FUNC16(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		FUNC4("Out of memory");
		goto error;
	}

	dev->workqueue = 0;

	/* register v4l2_device early so it can be used for printks */
	if (FUNC22(&interface->dev, &dev->v4l2_dev)) {
		FUNC4("v4l2_device_register failed");
		goto error;
	}

	FUNC17(&dev->io_mutex);
	FUNC17(&dev->i2c_mutex);
	FUNC17(&dev->usbc_mutex);
	dev->usbc_buf = FUNC15(64, GFP_KERNEL);
	if (!dev->usbc_buf) {
		FUNC23(&dev->v4l2_dev, "Out of memory\n");
		goto error;
	}

	FUNC13(&dev->wait_buffer);
	FUNC13(&dev->wait_data);

	dev->workqueue = FUNC2("hdpvr_buffer");
	if (!dev->workqueue)
		goto error;

	/* init video transfer queues */
	FUNC0(&dev->free_buff_list);
	FUNC0(&dev->rec_buff_list);

	dev->options = hdpvr_default_options;

	if (default_video_input < HDPVR_VIDEO_INPUTS)
		dev->options.video_input = default_video_input;

	if (default_audio_input < HDPVR_AUDIO_INPUTS) {
		dev->options.audio_input = default_audio_input;
		if (default_audio_input == HDPVR_SPDIF)
			dev->options.audio_codec =
				V4L2_MPEG_AUDIO_ENCODING_AC3;
	}

	dev->udev = FUNC21(FUNC14(interface));

	/* set up the endpoint information */
	/* use only the first bulk-in and bulk-out endpoints */
	iface_desc = interface->cur_altsetting;
	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;

		if (!dev->bulk_in_endpointAddr &&
		    FUNC20(endpoint)) {
			/* USB interface description is buggy, reported max
			 * packet size is 512 bytes, windows driver uses 8192 */
			buffer_size = 8192;
			dev->bulk_in_size = buffer_size;
			dev->bulk_in_endpointAddr = endpoint->bEndpointAddress;
		}

	}
	if (!dev->bulk_in_endpointAddr) {
		FUNC23(&dev->v4l2_dev, "Could not find bulk-in endpoint\n");
		goto error;
	}

	/* init the device */
	if (FUNC7(dev)) {
		FUNC23(&dev->v4l2_dev, "device init failed\n");
		goto error;
	}

	FUNC18(&dev->io_mutex);
	if (FUNC5(dev, NUM_BUFFERS)) {
		FUNC19(&dev->io_mutex);
		FUNC23(&dev->v4l2_dev,
			 "allocating transfer buffers failed\n");
		goto error;
	}
	FUNC19(&dev->io_mutex);

	if (FUNC11(dev, &interface->dev,
				    video_nr[FUNC1(&dev_nr)])) {
		FUNC23(&dev->v4l2_dev, "registering videodev failed\n");
		goto error;
	}

#if defined(CONFIG_I2C) || defined(CONFIG_I2C_MODULE)
	retval = hdpvr_register_i2c_adapter(dev);
	if (retval < 0) {
		v4l2_err(&dev->v4l2_dev, "i2c adapter register failed\n");
		goto error;
	}

	client = hdpvr_register_ir_rx_i2c(dev);
	if (!client) {
		v4l2_err(&dev->v4l2_dev, "i2c IR RX device register failed\n");
		goto reg_fail;
	}

	client = hdpvr_register_ir_tx_i2c(dev);
	if (!client) {
		v4l2_err(&dev->v4l2_dev, "i2c IR TX device register failed\n");
		goto reg_fail;
	}
#endif

	/* let the user know what node this device is now attached to */
	FUNC24(&dev->v4l2_dev, "device now attached to %s\n",
		  FUNC25(dev->video_dev));
	return 0;

reg_fail:
#if defined(CONFIG_I2C) || defined(CONFIG_I2C_MODULE)
	i2c_del_adapter(&dev->i2c_adapter);
#endif
error:
	if (dev) {
		/* Destroy single thread */
		if (dev->workqueue)
			FUNC3(dev->workqueue);
		/* this frees allocated memory */
		FUNC6(dev);
	}
	return retval;
}