
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_adapter {int dummy; } ;
struct drm_connector {int bad_edid_counter; TYPE_1__* dev; int null_edid_counter; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_UT_KMS ;
 int EDID_LENGTH ;
 int GFP_KERNEL ;
 int dev_warn (int ,char*,int ,int) ;
 int drm_debug ;
 scalar_t__ drm_do_probe_ddc_edid (struct i2c_adapter*,int*,int,int) ;
 scalar_t__ drm_edid_block_valid (int*,int,int) ;
 scalar_t__ drm_edid_is_zero (int*,int) ;
 int drm_get_connector_name (struct drm_connector*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int* krealloc (int*,int,int ) ;

__attribute__((used)) static u8 *
drm_do_get_edid(struct drm_connector *connector, struct i2c_adapter *adapter)
{
 int i, j = 0, valid_extensions = 0;
 u8 *block, *new;
 bool print_bad_edid = !connector->bad_edid_counter || (drm_debug & DRM_UT_KMS);

 if ((block = kmalloc(EDID_LENGTH, GFP_KERNEL)) == ((void*)0))
  return ((void*)0);


 for (i = 0; i < 4; i++) {
  if (drm_do_probe_ddc_edid(adapter, block, 0, EDID_LENGTH))
   goto out;
  if (drm_edid_block_valid(block, 0, print_bad_edid))
   break;
  if (i == 0 && drm_edid_is_zero(block, EDID_LENGTH)) {
   connector->null_edid_counter++;
   goto carp;
  }
 }
 if (i == 4)
  goto carp;


 if (block[0x7e] == 0)
  return block;

 new = krealloc(block, (block[0x7e] + 1) * EDID_LENGTH, GFP_KERNEL);
 if (!new)
  goto out;
 block = new;

 for (j = 1; j <= block[0x7e]; j++) {
  for (i = 0; i < 4; i++) {
   if (drm_do_probe_ddc_edid(adapter,
      block + (valid_extensions + 1) * EDID_LENGTH,
      j, EDID_LENGTH))
    goto out;
   if (drm_edid_block_valid(block + (valid_extensions + 1) * EDID_LENGTH, j, print_bad_edid)) {
    valid_extensions++;
    break;
   }
  }

  if (i == 4 && print_bad_edid) {
   dev_warn(connector->dev->dev,
    "%s: Ignoring invalid EDID block %d.\n",
    drm_get_connector_name(connector), j);

   connector->bad_edid_counter++;
  }
 }

 if (valid_extensions != block[0x7e]) {
  block[EDID_LENGTH-1] += block[0x7e] - valid_extensions;
  block[0x7e] = valid_extensions;
  new = krealloc(block, (valid_extensions + 1) * EDID_LENGTH, GFP_KERNEL);
  if (!new)
   goto out;
  block = new;
 }

 return block;

carp:
 if (print_bad_edid) {
  dev_warn(connector->dev->dev, "%s: EDID block %d invalid.\n",
    drm_get_connector_name(connector), j);
 }
 connector->bad_edid_counter++;

out:
 kfree(block);
 return ((void*)0);
}
