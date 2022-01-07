
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smsdevice_params_t {int buffer_size; int num_buffers; int device_type; int devpath; int flags; int postload_handler; int preload_handler; int sendrequest_handler; int detectmode_handler; int setmode_handler; int device; int context; } ;
struct smscore_device_t {int common_buffer_size; scalar_t__ num_buffers; int entry; int devpath; int device_flags; int postload_handler; int preload_handler; int sendrequest_handler; int detectmode_handler; int setmode_handler; int device; int context; int mode; int common_buffer_phys; int * common_buffer; int buffer_mng_waitq; int ir_init_done; int gpio_get_level_done; int gpio_set_level_done; int gpio_configuration_done; int resume_done; int reload_start_done; int init_device_done; int trigger_done; int data_download_done; int version_ex_done; int bufferslock; int clientslock; int buffers; int clients; } ;
struct smscore_buffer_t {int dummy; } ;


 int DEVICE_MODE_NONE ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int * dma_alloc_coherent (int *,int,int *,int) ;
 int g_smscore_devices ;
 int g_smscore_deviceslock ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int kmutex_lock (int *) ;
 int kmutex_unlock (int *) ;
 struct smscore_device_t* kzalloc (int,int) ;
 int list_add (int *,int *) ;
 int sms_info (char*,...) ;
 struct smscore_buffer_t* smscore_createbuffer (int *,int *,int ) ;
 int smscore_putbuffer (struct smscore_device_t*,struct smscore_buffer_t*) ;
 int smscore_registry_settype (int ,int ) ;
 int smscore_unregister_device (struct smscore_device_t*) ;
 int spin_lock_init (int *) ;
 int strcpy (int ,int ) ;

int smscore_register_device(struct smsdevice_params_t *params,
       struct smscore_device_t **coredev)
{
 struct smscore_device_t *dev;
 u8 *buffer;

 dev = kzalloc(sizeof(struct smscore_device_t), GFP_KERNEL);
 if (!dev) {
  sms_info("kzalloc(...) failed");
  return -ENOMEM;
 }


 INIT_LIST_HEAD(&dev->entry);


 INIT_LIST_HEAD(&dev->clients);
 INIT_LIST_HEAD(&dev->buffers);


 spin_lock_init(&dev->clientslock);
 spin_lock_init(&dev->bufferslock);


 init_completion(&dev->version_ex_done);
 init_completion(&dev->data_download_done);
 init_completion(&dev->trigger_done);
 init_completion(&dev->init_device_done);
 init_completion(&dev->reload_start_done);
 init_completion(&dev->resume_done);
 init_completion(&dev->gpio_configuration_done);
 init_completion(&dev->gpio_set_level_done);
 init_completion(&dev->gpio_get_level_done);
 init_completion(&dev->ir_init_done);


 init_waitqueue_head(&dev->buffer_mng_waitq);


 dev->common_buffer_size = params->buffer_size * params->num_buffers;
 dev->common_buffer = dma_alloc_coherent(((void*)0), dev->common_buffer_size,
      &dev->common_buffer_phys,
      GFP_KERNEL | GFP_DMA);
 if (!dev->common_buffer) {
  smscore_unregister_device(dev);
  return -ENOMEM;
 }


 for (buffer = dev->common_buffer;
      dev->num_buffers < params->num_buffers;
      dev->num_buffers++, buffer += params->buffer_size) {
  struct smscore_buffer_t *cb =
   smscore_createbuffer(buffer, dev->common_buffer,
          dev->common_buffer_phys);
  if (!cb) {
   smscore_unregister_device(dev);
   return -ENOMEM;
  }

  smscore_putbuffer(dev, cb);
 }

 sms_info("allocated %d buffers", dev->num_buffers);

 dev->mode = DEVICE_MODE_NONE;
 dev->context = params->context;
 dev->device = params->device;
 dev->setmode_handler = params->setmode_handler;
 dev->detectmode_handler = params->detectmode_handler;
 dev->sendrequest_handler = params->sendrequest_handler;
 dev->preload_handler = params->preload_handler;
 dev->postload_handler = params->postload_handler;

 dev->device_flags = params->flags;
 strcpy(dev->devpath, params->devpath);

 smscore_registry_settype(dev->devpath, params->device_type);


 kmutex_lock(&g_smscore_deviceslock);
 list_add(&dev->entry, &g_smscore_devices);
 kmutex_unlock(&g_smscore_deviceslock);

 *coredev = dev;

 sms_info("device %p created", dev);

 return 0;
}
