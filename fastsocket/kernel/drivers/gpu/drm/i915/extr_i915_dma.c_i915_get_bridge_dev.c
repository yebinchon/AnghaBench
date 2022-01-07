
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int bridge_dev; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_ERROR (char*) ;
 int PCI_DEVFN (int ,int ) ;
 int pci_get_bus_and_slot (int ,int ) ;

__attribute__((used)) static int i915_get_bridge_dev(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 dev_priv->bridge_dev = pci_get_bus_and_slot(0, PCI_DEVFN(0, 0));
 if (!dev_priv->bridge_dev) {
  DRM_ERROR("bridge device not found\n");
  return -1;
 }
 return 0;
}
