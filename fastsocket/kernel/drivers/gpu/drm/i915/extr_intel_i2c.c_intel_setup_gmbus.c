
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_8__ {int * algo; TYPE_1__ dev; int name; int class; int owner; } ;
struct intel_gmbus {int reg0; int force_bit; TYPE_3__ adapter; struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {struct intel_gmbus* gmbus; int dev; int gmbus_wait_queue; int gmbus_mutex; scalar_t__ gpio_mmio_base; } ;
struct drm_device {TYPE_2__* pdev; struct drm_i915_private* dev_private; } ;
struct TYPE_9__ {char* name; } ;
struct TYPE_7__ {int dev; } ;


 int GMBUS_NUM_PORTS ;
 int GMBUS_RATE_100KHZ ;
 scalar_t__ GPIOA ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int I2C_CLASS_DDC ;
 scalar_t__ IS_I830 (struct drm_device*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_device*) ;
 scalar_t__ PCH_GPIOA ;
 int THIS_MODULE ;
 scalar_t__ VLV_DISPLAY_BASE ;
 int gmbus_algorithm ;
 TYPE_5__* gmbus_ports ;
 int i2c_add_adapter (TYPE_3__*) ;
 int i2c_del_adapter (TYPE_3__*) ;
 int init_waitqueue_head (int *) ;
 int intel_gpio_setup (struct intel_gmbus*,int) ;
 int intel_i2c_reset (int ) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*,char*) ;

int intel_setup_gmbus(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int ret, i;

 if (HAS_PCH_SPLIT(dev))
  dev_priv->gpio_mmio_base = PCH_GPIOA - GPIOA;
 else if (IS_VALLEYVIEW(dev))
  dev_priv->gpio_mmio_base = VLV_DISPLAY_BASE;
 else
  dev_priv->gpio_mmio_base = 0;

 mutex_init(&dev_priv->gmbus_mutex);
 init_waitqueue_head(&dev_priv->gmbus_wait_queue);

 for (i = 0; i < GMBUS_NUM_PORTS; i++) {
  struct intel_gmbus *bus = &dev_priv->gmbus[i];
  u32 port = i + 1;

  bus->adapter.owner = THIS_MODULE;
  bus->adapter.class = I2C_CLASS_DDC;
  snprintf(bus->adapter.name,
    sizeof(bus->adapter.name),
    "i915 gmbus %s",
    gmbus_ports[i].name);

  bus->adapter.dev.parent = &dev->pdev->dev;
  bus->dev_priv = dev_priv;

  bus->adapter.algo = &gmbus_algorithm;


  bus->reg0 = port | GMBUS_RATE_100KHZ;


  if (IS_I830(dev))
   bus->force_bit = 1;

  intel_gpio_setup(bus, port);

  ret = i2c_add_adapter(&bus->adapter);
  if (ret)
   goto err;
 }

 intel_i2c_reset(dev_priv->dev);

 return 0;

err:
 while (--i) {
  struct intel_gmbus *bus = &dev_priv->gmbus[i];
  i2c_del_adapter(&bus->adapter);
 }
 return ret;
}
