
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hpsb_host_driver {int dummy; } ;
struct device {int * class; struct device* parent; } ;
struct TYPE_3__ {scalar_t__ speed_map; scalar_t__ topology_map; scalar_t__* gen_timestamp; int rom; } ;
struct TYPE_4__ {unsigned long data; int function; } ;
struct hpsb_host {int timeout_interval; int id; struct device device; struct device host_dev; TYPE_1__ csr; int * speed_map; scalar_t__ topology_map; TYPE_2__ timeout; int delayed_reset; int generation; int addr_space; int pending_packets; struct hpsb_host_driver* driver; struct hpsb_host* hostdata; } ;


 int CSR_BUS_INFO_SIZE ;
 int GFP_KERNEL ;
 int HZ ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int abort_timedouts ;
 int alloc_hostnum_cb ;
 int atomic_set (int *,int ) ;
 int csr1212_create_csr (int *,int ,struct hpsb_host*) ;
 int csr_bus_ops ;
 int delayed_reset_bus ;
 int dev_set_name (struct device*,char*,int) ;
 int dev_to_node (struct device*) ;
 scalar_t__ device_register (struct device*) ;
 int device_unregister (struct device*) ;
 int get_device (struct device*) ;
 int host_num_alloc ;
 int hpsb_host_class ;
 int init_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int kfree (struct hpsb_host*) ;
 struct hpsb_host* kzalloc (int,int ) ;
 int memcpy (struct device*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nodemgr_dev_template_host ;
 scalar_t__ nodemgr_for_each_host (int*,int ) ;
 int set_dev_node (struct device*,int ) ;

struct hpsb_host *hpsb_alloc_host(struct hpsb_host_driver *drv, size_t extra,
      struct device *dev)
{
 struct hpsb_host *h;
 int i;
 int hostnum = 0;

 h = kzalloc(sizeof(*h) + extra, GFP_KERNEL);
 if (!h)
  return ((void*)0);

 h->csr.rom = csr1212_create_csr(&csr_bus_ops, CSR_BUS_INFO_SIZE, h);
 if (!h->csr.rom)
  goto fail;

 h->hostdata = h + 1;
 h->driver = drv;

 INIT_LIST_HEAD(&h->pending_packets);
 INIT_LIST_HEAD(&h->addr_space);

 for (i = 2; i < 16; i++)
  h->csr.gen_timestamp[i] = jiffies - 60 * HZ;

 atomic_set(&h->generation, 0);

 INIT_DELAYED_WORK(&h->delayed_reset, delayed_reset_bus);

 init_timer(&h->timeout);
 h->timeout.data = (unsigned long) h;
 h->timeout.function = abort_timedouts;
 h->timeout_interval = HZ / 20;

 h->topology_map = h->csr.topology_map + 3;
 h->speed_map = (u8 *)(h->csr.speed_map + 2);

 mutex_lock(&host_num_alloc);
 while (nodemgr_for_each_host(&hostnum, alloc_hostnum_cb))
  hostnum++;
 mutex_unlock(&host_num_alloc);
 h->id = hostnum;

 memcpy(&h->device, &nodemgr_dev_template_host, sizeof(h->device));
 h->device.parent = dev;
 set_dev_node(&h->device, dev_to_node(dev));
 dev_set_name(&h->device, "fw-host%d", h->id);

 h->host_dev.parent = &h->device;
 h->host_dev.class = &hpsb_host_class;
 dev_set_name(&h->host_dev, "fw-host%d", h->id);

 if (device_register(&h->device))
  goto fail;
 if (device_register(&h->host_dev)) {
  device_unregister(&h->device);
  goto fail;
 }
 get_device(&h->device);

 return h;

fail:
 kfree(h);
 return ((void*)0);
}
