
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdvo_device_mapping {int initialized; int dvo_port; scalar_t__ slave_addr; int i2c_pin; int ddc_pin; int dvo_wiring; } ;
struct drm_i915_private {struct sdvo_device_mapping* sdvo_mappings; } ;
struct child_device_config {scalar_t__ slave_addr; int dvo_port; scalar_t__ slave2_addr; int i2c_pin; int ddc_pin; int dvo_wiring; int device_type; } ;
struct bdb_header {int dummy; } ;
struct bdb_general_definitions {int child_dev_size; struct child_device_config* devices; } ;


 int BDB_GENERAL_DEFINITIONS ;
 int DEVICE_PORT_DVOB ;
 int DEVICE_PORT_DVOC ;
 int DRM_DEBUG_KMS (char*,...) ;
 scalar_t__ SLAVE_ADDR1 ;
 scalar_t__ SLAVE_ADDR2 ;
 struct bdb_general_definitions* find_section (struct bdb_header*,int ) ;
 int get_blocksize (struct bdb_general_definitions*) ;

__attribute__((used)) static void
parse_sdvo_device_mapping(struct drm_i915_private *dev_priv,
     struct bdb_header *bdb)
{
 struct sdvo_device_mapping *p_mapping;
 struct bdb_general_definitions *p_defs;
 struct child_device_config *p_child;
 int i, child_device_num, count;
 u16 block_size;

 p_defs = find_section(bdb, BDB_GENERAL_DEFINITIONS);
 if (!p_defs) {
  DRM_DEBUG_KMS("No general definition block is found, unable to construct sdvo mapping.\n");
  return;
 }





 if (p_defs->child_dev_size != sizeof(*p_child)) {

  DRM_DEBUG_KMS("different child size is found. Invalid.\n");
  return;
 }

 block_size = get_blocksize(p_defs);

 child_device_num = (block_size - sizeof(*p_defs)) /
    sizeof(*p_child);
 count = 0;
 for (i = 0; i < child_device_num; i++) {
  p_child = &(p_defs->devices[i]);
  if (!p_child->device_type) {

   continue;
  }
  if (p_child->slave_addr != SLAVE_ADDR1 &&
   p_child->slave_addr != SLAVE_ADDR2) {




   continue;
  }
  if (p_child->dvo_port != DEVICE_PORT_DVOB &&
   p_child->dvo_port != DEVICE_PORT_DVOC) {

   DRM_DEBUG_KMS("Incorrect SDVO port. Skip it\n");
   continue;
  }
  DRM_DEBUG_KMS("the SDVO device with slave addr %2x is found on"
    " %s port\n",
    p_child->slave_addr,
    (p_child->dvo_port == DEVICE_PORT_DVOB) ?
     "SDVOB" : "SDVOC");
  p_mapping = &(dev_priv->sdvo_mappings[p_child->dvo_port - 1]);
  if (!p_mapping->initialized) {
   p_mapping->dvo_port = p_child->dvo_port;
   p_mapping->slave_addr = p_child->slave_addr;
   p_mapping->dvo_wiring = p_child->dvo_wiring;
   p_mapping->ddc_pin = p_child->ddc_pin;
   p_mapping->i2c_pin = p_child->i2c_pin;
   p_mapping->initialized = 1;
   DRM_DEBUG_KMS("SDVO device: dvo=%x, addr=%x, wiring=%d, ddc_pin=%d, i2c_pin=%d\n",
          p_mapping->dvo_port,
          p_mapping->slave_addr,
          p_mapping->dvo_wiring,
          p_mapping->ddc_pin,
          p_mapping->i2c_pin);
  } else {
   DRM_DEBUG_KMS("Maybe one SDVO port is shared by "
      "two SDVO device.\n");
  }
  if (p_child->slave2_addr) {


   DRM_DEBUG_KMS("there exists the slave2_addr. Maybe this"
    " is a SDVO device with multiple inputs.\n");
  }
  count++;
 }

 if (!count) {

  DRM_DEBUG_KMS("No SDVO device info is found in VBT\n");
 }
 return;
}
