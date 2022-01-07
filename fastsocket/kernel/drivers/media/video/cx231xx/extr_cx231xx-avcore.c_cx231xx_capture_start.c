
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct pcb_config {int config_num; } ;
struct cx231xx {scalar_t__ mode; int current_pcb_config; } ;


 scalar_t__ CX231XX_ANALOG_MODE ;
 scalar_t__ ENABLE_EP1 ;
 scalar_t__ ENABLE_EP2 ;
 scalar_t__ ENABLE_EP3 ;
 scalar_t__ ENABLE_EP4 ;
 scalar_t__ ENABLE_EP5 ;
 scalar_t__ ENABLE_EP6 ;
 int cx231xx_initialize_stream_xfer (struct cx231xx*,int) ;
 int cx231xx_start_stream (struct cx231xx*,scalar_t__) ;
 int cx231xx_stop_stream (struct cx231xx*,scalar_t__) ;

int cx231xx_capture_start(struct cx231xx *dev, int start, u8 media_type)
{
 int rc = -1;
 u32 ep_mask = -1;
 struct pcb_config *pcb_config;


 pcb_config = (struct pcb_config *)&dev->current_pcb_config;

 if (pcb_config->config_num == 1) {
  switch (media_type) {
  case 0:
   ep_mask = ENABLE_EP4;
   break;
  case 1:
   ep_mask = ENABLE_EP3;
   break;
  case 2:
   ep_mask = ENABLE_EP5;
   break;
  case 3:
   ep_mask = ENABLE_EP6;
   break;
  case 4:
  case 6:
   ep_mask = ENABLE_EP1;
   break;
  case 5:
   ep_mask = ENABLE_EP2;
   break;
  }

 } else if (pcb_config->config_num > 1) {
  switch (media_type) {
  case 0:
   ep_mask = ENABLE_EP4;
   break;
  case 1:
   ep_mask = ENABLE_EP3;
   break;
  case 2:
   ep_mask = ENABLE_EP5;
   break;
  case 3:
   ep_mask = ENABLE_EP6;
   break;
  case 4:
  case 6:
   ep_mask = ENABLE_EP1;
   break;
  case 5:
   ep_mask = ENABLE_EP2;
   break;
  }

 }

 if (start) {
  rc = cx231xx_initialize_stream_xfer(dev, media_type);

  if (rc < 0)
   return rc;


  if (ep_mask > 0)
   rc = cx231xx_start_stream(dev, ep_mask);
 } else {

  if (ep_mask > 0)
   rc = cx231xx_stop_stream(dev, ep_mask);
 }

 if (dev->mode == CX231XX_ANALOG_MODE)
  ;
 else
  ;

 return rc;
}
