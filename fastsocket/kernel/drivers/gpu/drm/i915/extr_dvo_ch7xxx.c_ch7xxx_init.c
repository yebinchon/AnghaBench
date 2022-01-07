
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct intel_dvo_device {scalar_t__ slave_addr; struct ch7xxx_priv* dev_priv; struct i2c_adapter* i2c_bus; } ;
struct i2c_adapter {scalar_t__ name; } ;
struct ch7xxx_priv {int quiet; } ;


 scalar_t__ CH7xxx_DID ;
 int CH7xxx_REG_DID ;
 int CH7xxx_REG_VID ;
 int DRM_DEBUG_KMS (char*,char*,scalar_t__,scalar_t__) ;
 int GFP_KERNEL ;
 char* ch7xxx_get_id (scalar_t__) ;
 int ch7xxx_readb (struct intel_dvo_device*,int ,scalar_t__*) ;
 int kfree (struct ch7xxx_priv*) ;
 struct ch7xxx_priv* kzalloc (int,int ) ;

__attribute__((used)) static bool ch7xxx_init(struct intel_dvo_device *dvo,
   struct i2c_adapter *adapter)
{

 struct ch7xxx_priv *ch7xxx;
 uint8_t vendor, device;
 char *name;

 ch7xxx = kzalloc(sizeof(struct ch7xxx_priv), GFP_KERNEL);
 if (ch7xxx == ((void*)0))
  return 0;

 dvo->i2c_bus = adapter;
 dvo->dev_priv = ch7xxx;
 ch7xxx->quiet = 1;

 if (!ch7xxx_readb(dvo, CH7xxx_REG_VID, &vendor))
  goto out;

 name = ch7xxx_get_id(vendor);
 if (!name) {
  DRM_DEBUG_KMS("ch7xxx not detected; got 0x%02x from %s "
    "slave %d.\n",
     vendor, adapter->name, dvo->slave_addr);
  goto out;
 }


 if (!ch7xxx_readb(dvo, CH7xxx_REG_DID, &device))
  goto out;

 if (device != CH7xxx_DID) {
  DRM_DEBUG_KMS("ch7xxx not detected; got 0x%02x from %s "
    "slave %d.\n",
     vendor, adapter->name, dvo->slave_addr);
  goto out;
 }

 ch7xxx->quiet = 0;
 DRM_DEBUG_KMS("Detected %s chipset, vendor/device ID 0x%02x/0x%02x\n",
    name, vendor, device);
 return 1;
out:
 kfree(ch7xxx);
 return 0;
}
