
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct intel_connector {TYPE_1__* edid; } ;
struct i2c_adapter {int dummy; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_3__ {int extensions; } ;


 int EDID_LENGTH ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 struct edid* drm_get_edid (struct drm_connector*,struct i2c_adapter*) ;
 struct edid* kmalloc (int,int ) ;
 int memcpy (struct edid*,TYPE_1__*,int) ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static struct edid *
intel_dp_get_edid(struct drm_connector *connector, struct i2c_adapter *adapter)
{
 struct intel_connector *intel_connector = to_intel_connector(connector);


 if (intel_connector->edid) {
  struct edid *edid;
  int size;


  if (IS_ERR(intel_connector->edid))
   return ((void*)0);

  size = (intel_connector->edid->extensions + 1) * EDID_LENGTH;
  edid = kmalloc(size, GFP_KERNEL);
  if (!edid)
   return ((void*)0);

  memcpy(edid, intel_connector->edid, size);
  return edid;
 }

 return drm_get_edid(connector, adapter);
}
