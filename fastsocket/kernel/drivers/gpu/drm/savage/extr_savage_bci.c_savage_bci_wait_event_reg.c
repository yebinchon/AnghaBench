
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int drm_savage_private_t ;


 int DRM_ERROR (char*) ;
 int DRM_INFO (char*,int,int) ;
 int DRM_UDELAY (int) ;
 int EBUSY ;
 int SAVAGE_EVENT_USEC_TIMEOUT ;
 int SAVAGE_READ (int ) ;
 int SAVAGE_STATUS_WORD1 ;

__attribute__((used)) static int
savage_bci_wait_event_reg(drm_savage_private_t * dev_priv, uint16_t e)
{
 uint32_t status;
 int i;

 for (i = 0; i < SAVAGE_EVENT_USEC_TIMEOUT; i++) {
  status = SAVAGE_READ(SAVAGE_STATUS_WORD1);
  if ((((status & 0xffff) - e) & 0xffff) <= 0x7fff ||
      (status & 0xffff) == 0)
   return 0;
  DRM_UDELAY(1);
 }






 return -EBUSY;
}
