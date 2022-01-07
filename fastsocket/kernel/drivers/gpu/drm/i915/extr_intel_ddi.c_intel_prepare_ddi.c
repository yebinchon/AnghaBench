
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int HAS_DDI (struct drm_device*) ;
 int PORT_A ;
 int PORT_E ;
 int intel_prepare_ddi_buffers (struct drm_device*,int,int) ;

void intel_prepare_ddi(struct drm_device *dev)
{
 int port;

 if (!HAS_DDI(dev))
  return;

 for (port = PORT_A; port < PORT_E; port++)
  intel_prepare_ddi_buffers(dev, port, 0);





 intel_prepare_ddi_buffers(dev, PORT_E, 1);
}
