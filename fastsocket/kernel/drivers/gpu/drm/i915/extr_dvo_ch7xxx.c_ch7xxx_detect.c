
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct intel_dvo_device {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int CH7xxx_CDET_DVI ;
 int CH7xxx_CONNECTION_DETECT ;
 int CH7xxx_PM ;
 int CH7xxx_PM_DVIL ;
 int CH7xxx_PM_DVIP ;
 int CH7xxx_PM_FPD ;
 int ch7xxx_readb (struct intel_dvo_device*,int ,int*) ;
 int ch7xxx_writeb (struct intel_dvo_device*,int ,int) ;
 int connector_status_connected ;
 int connector_status_disconnected ;

__attribute__((used)) static enum drm_connector_status ch7xxx_detect(struct intel_dvo_device *dvo)
{
 uint8_t cdet, orig_pm, pm;

 ch7xxx_readb(dvo, CH7xxx_PM, &orig_pm);

 pm = orig_pm;
 pm &= ~CH7xxx_PM_FPD;
 pm |= CH7xxx_PM_DVIL | CH7xxx_PM_DVIP;

 ch7xxx_writeb(dvo, CH7xxx_PM, pm);

 ch7xxx_readb(dvo, CH7xxx_CONNECTION_DETECT, &cdet);

 ch7xxx_writeb(dvo, CH7xxx_PM, orig_pm);

 if (cdet & CH7xxx_CDET_DVI)
  return connector_status_connected;
 return connector_status_disconnected;
}
