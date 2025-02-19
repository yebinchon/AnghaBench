
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_dev {int status; scalar_t__ active; TYPE_1__* protocol; int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int resource_size_t ;
struct TYPE_2__ {int (* get ) (struct pnp_dev*) ;} ;


 int EBUSY ;
 int PNP_ATTACHED ;
 int dev_info (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pnp_activate_dev (struct pnp_dev*) ;
 int pnp_add_dma_resource (struct pnp_dev*,int ,int ) ;
 int pnp_add_io_resource (struct pnp_dev*,int ,int ,int ) ;
 int pnp_add_irq_resource (struct pnp_dev*,int ,int ) ;
 int pnp_add_mem_resource (struct pnp_dev*,int ,int ,int ) ;
 int pnp_auto_config_dev (struct pnp_dev*) ;
 scalar_t__ pnp_can_read (struct pnp_dev*) ;
 int pnp_disable_dev (struct pnp_dev*) ;
 int pnp_init_resources (struct pnp_dev*) ;
 int pnp_res_mutex ;
 int simple_strtoul (char*,char**,int ) ;
 char* skip_spaces (char*) ;
 int strnicmp (char*,char*,int) ;
 int stub1 (struct pnp_dev*) ;
 struct pnp_dev* to_pnp_dev (struct device*) ;

__attribute__((used)) static ssize_t pnp_set_current_resources(struct device *dmdev,
      struct device_attribute *attr,
      const char *ubuf, size_t count)
{
 struct pnp_dev *dev = to_pnp_dev(dmdev);
 char *buf = (void *)ubuf;
 int retval = 0;
 resource_size_t start, end;

 if (dev->status & PNP_ATTACHED) {
  retval = -EBUSY;
  dev_info(&dev->dev, "in use; can't configure\n");
  goto done;
 }

 buf = skip_spaces(buf);
 if (!strnicmp(buf, "disable", 7)) {
  retval = pnp_disable_dev(dev);
  goto done;
 }
 if (!strnicmp(buf, "activate", 8)) {
  retval = pnp_activate_dev(dev);
  goto done;
 }
 if (!strnicmp(buf, "fill", 4)) {
  if (dev->active)
   goto done;
  retval = pnp_auto_config_dev(dev);
  goto done;
 }
 if (!strnicmp(buf, "auto", 4)) {
  if (dev->active)
   goto done;
  pnp_init_resources(dev);
  retval = pnp_auto_config_dev(dev);
  goto done;
 }
 if (!strnicmp(buf, "clear", 5)) {
  if (dev->active)
   goto done;
  pnp_init_resources(dev);
  goto done;
 }
 if (!strnicmp(buf, "get", 3)) {
  mutex_lock(&pnp_res_mutex);
  if (pnp_can_read(dev))
   dev->protocol->get(dev);
  mutex_unlock(&pnp_res_mutex);
  goto done;
 }
 if (!strnicmp(buf, "set", 3)) {
  if (dev->active)
   goto done;
  buf += 3;
  pnp_init_resources(dev);
  mutex_lock(&pnp_res_mutex);
  while (1) {
   buf = skip_spaces(buf);
   if (!strnicmp(buf, "io", 2)) {
    buf = skip_spaces(buf + 2);
    start = simple_strtoul(buf, &buf, 0);
    buf = skip_spaces(buf);
    if (*buf == '-') {
     buf = skip_spaces(buf + 1);
     end = simple_strtoul(buf, &buf, 0);
    } else
     end = start;
    pnp_add_io_resource(dev, start, end, 0);
    continue;
   }
   if (!strnicmp(buf, "mem", 3)) {
    buf = skip_spaces(buf + 3);
    start = simple_strtoul(buf, &buf, 0);
    buf = skip_spaces(buf);
    if (*buf == '-') {
     buf = skip_spaces(buf + 1);
     end = simple_strtoul(buf, &buf, 0);
    } else
     end = start;
    pnp_add_mem_resource(dev, start, end, 0);
    continue;
   }
   if (!strnicmp(buf, "irq", 3)) {
    buf = skip_spaces(buf + 3);
    start = simple_strtoul(buf, &buf, 0);
    pnp_add_irq_resource(dev, start, 0);
    continue;
   }
   if (!strnicmp(buf, "dma", 3)) {
    buf = skip_spaces(buf + 3);
    start = simple_strtoul(buf, &buf, 0);
    pnp_add_dma_resource(dev, start, 0);
    continue;
   }
   break;
  }
  mutex_unlock(&pnp_res_mutex);
  goto done;
 }

done:
 if (retval < 0)
  return retval;
 return count;
}
