#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct smsdevice_params_t {int buffer_size; int num_buffers; int /*<<< orphan*/  device_type; int /*<<< orphan*/  devpath; int /*<<< orphan*/  flags; int /*<<< orphan*/  postload_handler; int /*<<< orphan*/  preload_handler; int /*<<< orphan*/  sendrequest_handler; int /*<<< orphan*/  detectmode_handler; int /*<<< orphan*/  setmode_handler; int /*<<< orphan*/  device; int /*<<< orphan*/  context; } ;
struct smscore_device_t {int common_buffer_size; scalar_t__ num_buffers; int /*<<< orphan*/  entry; int /*<<< orphan*/  devpath; int /*<<< orphan*/  device_flags; int /*<<< orphan*/  postload_handler; int /*<<< orphan*/  preload_handler; int /*<<< orphan*/  sendrequest_handler; int /*<<< orphan*/  detectmode_handler; int /*<<< orphan*/  setmode_handler; int /*<<< orphan*/  device; int /*<<< orphan*/  context; int /*<<< orphan*/  mode; int /*<<< orphan*/  common_buffer_phys; int /*<<< orphan*/ * common_buffer; int /*<<< orphan*/  buffer_mng_waitq; int /*<<< orphan*/  ir_init_done; int /*<<< orphan*/  gpio_get_level_done; int /*<<< orphan*/  gpio_set_level_done; int /*<<< orphan*/  gpio_configuration_done; int /*<<< orphan*/  resume_done; int /*<<< orphan*/  reload_start_done; int /*<<< orphan*/  init_device_done; int /*<<< orphan*/  trigger_done; int /*<<< orphan*/  data_download_done; int /*<<< orphan*/  version_ex_done; int /*<<< orphan*/  bufferslock; int /*<<< orphan*/  clientslock; int /*<<< orphan*/  buffers; int /*<<< orphan*/  clients; } ;
struct smscore_buffer_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_MODE_NONE ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  g_smscore_devices ; 
 int /*<<< orphan*/  g_smscore_deviceslock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct smscore_device_t* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 struct smscore_buffer_t* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct smscore_device_t*,struct smscore_buffer_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct smscore_device_t*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC15(struct smsdevice_params_t *params,
			    struct smscore_device_t **coredev)
{
	struct smscore_device_t *dev;
	u8 *buffer;

	dev = FUNC6(sizeof(struct smscore_device_t), GFP_KERNEL);
	if (!dev) {
		FUNC8("kzalloc(...) failed");
		return -ENOMEM;
	}

	/* init list entry so it could be safe in smscore_unregister_device */
	FUNC0(&dev->entry);

	/* init queues */
	FUNC0(&dev->clients);
	FUNC0(&dev->buffers);

	/* init locks */
	FUNC13(&dev->clientslock);
	FUNC13(&dev->bufferslock);

	/* init completion events */
	FUNC2(&dev->version_ex_done);
	FUNC2(&dev->data_download_done);
	FUNC2(&dev->trigger_done);
	FUNC2(&dev->init_device_done);
	FUNC2(&dev->reload_start_done);
	FUNC2(&dev->resume_done);
	FUNC2(&dev->gpio_configuration_done);
	FUNC2(&dev->gpio_set_level_done);
	FUNC2(&dev->gpio_get_level_done);
	FUNC2(&dev->ir_init_done);

	/* Buffer management */
	FUNC3(&dev->buffer_mng_waitq);

	/* alloc common buffer */
	dev->common_buffer_size = params->buffer_size * params->num_buffers;
	dev->common_buffer = FUNC1(NULL, dev->common_buffer_size,
						&dev->common_buffer_phys,
						GFP_KERNEL | GFP_DMA);
	if (!dev->common_buffer) {
		FUNC12(dev);
		return -ENOMEM;
	}

	/* prepare dma buffers */
	for (buffer = dev->common_buffer;
	     dev->num_buffers < params->num_buffers;
	     dev->num_buffers++, buffer += params->buffer_size) {
		struct smscore_buffer_t *cb =
			FUNC9(buffer, dev->common_buffer,
					     dev->common_buffer_phys);
		if (!cb) {
			FUNC12(dev);
			return -ENOMEM;
		}

		FUNC10(dev, cb);
	}

	FUNC8("allocated %d buffers", dev->num_buffers);

	dev->mode = DEVICE_MODE_NONE;
	dev->context = params->context;
	dev->device = params->device;
	dev->setmode_handler = params->setmode_handler;
	dev->detectmode_handler = params->detectmode_handler;
	dev->sendrequest_handler = params->sendrequest_handler;
	dev->preload_handler = params->preload_handler;
	dev->postload_handler = params->postload_handler;

	dev->device_flags = params->flags;
	FUNC14(dev->devpath, params->devpath);

	FUNC11(dev->devpath, params->device_type);

	/* add device to devices list */
	FUNC4(&g_smscore_deviceslock);
	FUNC7(&dev->entry, &g_smscore_devices);
	FUNC5(&g_smscore_deviceslock);

	*coredev = dev;

	FUNC8("device %p created", dev);

	return 0;
}