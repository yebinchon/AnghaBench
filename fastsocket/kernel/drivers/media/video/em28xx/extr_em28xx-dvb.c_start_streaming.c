
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct em28xx* priv; } ;
struct em28xx_dvb {TYPE_1__ adapter; } ;
struct em28xx {int udev; } ;


 int EM28XX_DIGITAL_MODE ;
 int EM28XX_DVB_MAX_PACKETS ;
 int EM28XX_DVB_NUM_BUFS ;
 int dvb_isoc_copy ;
 int em28xx_init_isoc (struct em28xx*,int ,int ,int,int ) ;
 int em28xx_isoc_dvb_max_packetsize (struct em28xx*) ;
 int em28xx_set_mode (struct em28xx*,int ) ;
 int usb_set_interface (int ,int ,int) ;

__attribute__((used)) static int start_streaming(struct em28xx_dvb *dvb)
{
 int rc;
 struct em28xx *dev = dvb->adapter.priv;
 int max_dvb_packet_size;

 usb_set_interface(dev->udev, 0, 1);
 rc = em28xx_set_mode(dev, EM28XX_DIGITAL_MODE);
 if (rc < 0)
  return rc;

 max_dvb_packet_size = em28xx_isoc_dvb_max_packetsize(dev);

 return em28xx_init_isoc(dev, EM28XX_DVB_MAX_PACKETS,
    EM28XX_DVB_NUM_BUFS, max_dvb_packet_size,
    dvb_isoc_copy);
}
