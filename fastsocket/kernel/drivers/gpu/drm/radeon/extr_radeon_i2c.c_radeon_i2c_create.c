
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * parent; } ;
struct TYPE_12__ {TYPE_3__* algo_data; int name; int * algo; TYPE_1__ dev; int class; int owner; } ;
struct TYPE_10__ {int udelay; struct radeon_i2c_chan* data; int timeout; int getscl; int getsda; int setscl; int setsda; int post_xfer; int pre_xfer; } ;
struct TYPE_11__ {TYPE_3__ bit; } ;
struct radeon_i2c_bus_rec {scalar_t__ hw_capable; scalar_t__ mm_i2c; } ;
struct radeon_i2c_chan {TYPE_5__ adapter; TYPE_4__ algo; struct drm_device* dev; struct radeon_i2c_bus_rec rec; } ;
struct radeon_device {scalar_t__ family; } ;
struct drm_device {TYPE_2__* pdev; struct radeon_device* dev_private; } ;
struct TYPE_9__ {int dev; } ;


 scalar_t__ ASIC_IS_DCE3 (struct radeon_device*) ;
 scalar_t__ CHIP_R580 ;
 scalar_t__ CHIP_RS480 ;
 scalar_t__ CHIP_RV515 ;
 int DRM_ERROR (char*,char const*) ;
 int GFP_KERNEL ;
 int I2C_CLASS_DDC ;
 int THIS_MODULE ;
 int get_clock ;
 int get_data ;
 int i2c_add_adapter (TYPE_5__*) ;
 int i2c_bit_add_bus (TYPE_5__*) ;
 int i2c_set_adapdata (TYPE_5__*,struct radeon_i2c_chan*) ;
 int kfree (struct radeon_i2c_chan*) ;
 struct radeon_i2c_chan* kzalloc (int,int ) ;
 int post_xfer ;
 int pre_xfer ;
 int radeon_atom_i2c_algo ;
 scalar_t__ radeon_hw_i2c ;
 int radeon_i2c_algo ;
 int set_clock ;
 int set_data ;
 int snprintf (int ,int,char*,char const*) ;
 int usecs_to_jiffies (int) ;

struct radeon_i2c_chan *radeon_i2c_create(struct drm_device *dev,
       struct radeon_i2c_bus_rec *rec,
       const char *name)
{
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_i2c_chan *i2c;
 int ret;


 if (rec->mm_i2c && (radeon_hw_i2c == 0))
  return ((void*)0);

 i2c = kzalloc(sizeof(struct radeon_i2c_chan), GFP_KERNEL);
 if (i2c == ((void*)0))
  return ((void*)0);

 i2c->rec = *rec;
 i2c->adapter.owner = THIS_MODULE;
 i2c->adapter.class = I2C_CLASS_DDC;
 i2c->adapter.dev.parent = &dev->pdev->dev;
 i2c->dev = dev;
 i2c_set_adapdata(&i2c->adapter, i2c);
 if (rec->mm_i2c ||
     (rec->hw_capable &&
      radeon_hw_i2c &&
      ((rdev->family <= CHIP_RS480) ||
       ((rdev->family >= CHIP_RV515) && (rdev->family <= CHIP_R580))))) {

  snprintf(i2c->adapter.name, sizeof(i2c->adapter.name),
    "Radeon i2c hw bus %s", name);
  i2c->adapter.algo = &radeon_i2c_algo;
  ret = i2c_add_adapter(&i2c->adapter);
  if (ret) {
   DRM_ERROR("Failed to register hw i2c %s\n", name);
   goto out_free;
  }
 } else if (rec->hw_capable &&
     radeon_hw_i2c &&
     ASIC_IS_DCE3(rdev)) {

  snprintf(i2c->adapter.name, sizeof(i2c->adapter.name),
    "Radeon i2c hw bus %s", name);
  i2c->adapter.algo = &radeon_atom_i2c_algo;
  ret = i2c_add_adapter(&i2c->adapter);
  if (ret) {
   DRM_ERROR("Failed to register hw i2c %s\n", name);
   goto out_free;
  }
 } else {

  snprintf(i2c->adapter.name, sizeof(i2c->adapter.name),
    "Radeon i2c bit bus %s", name);
  i2c->adapter.algo_data = &i2c->algo.bit;
  i2c->algo.bit.pre_xfer = pre_xfer;
  i2c->algo.bit.post_xfer = post_xfer;
  i2c->algo.bit.setsda = set_data;
  i2c->algo.bit.setscl = set_clock;
  i2c->algo.bit.getsda = get_data;
  i2c->algo.bit.getscl = get_clock;
  i2c->algo.bit.udelay = 10;
  i2c->algo.bit.timeout = usecs_to_jiffies(2200);
  i2c->algo.bit.data = i2c;
  ret = i2c_bit_add_bus(&i2c->adapter);
  if (ret) {
   DRM_ERROR("Failed to register bit i2c %s\n", name);
   goto out_free;
  }
 }

 return i2c;
out_free:
 kfree(i2c);
 return ((void*)0);

}
