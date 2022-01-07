
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct cx231xx* priv; } ;
struct cx231xx_dvb {TYPE_1__ adapter; } ;
struct TYPE_4__ {int max_pkt_size; } ;
struct cx231xx {int mode_tv; TYPE_2__ ts1_mode; int i2c_lock; scalar_t__ USE_ISO; } ;


 int CX231XX_DIGITAL_MODE ;
 int CX231XX_DVB_MAX_PACKETS ;
 int CX231XX_DVB_NUM_BUFS ;
 int INDEX_TS1 ;
 int cx231xx_enable_i2c_port_3 (struct cx231xx*,int) ;
 int cx231xx_info (char*) ;
 int cx231xx_init_bulk (struct cx231xx*,int ,int ,int ,int ) ;
 int cx231xx_init_isoc (struct cx231xx*,int ,int ,int ,int ) ;
 int cx231xx_set_alt_setting (struct cx231xx*,int ,int) ;
 int cx231xx_set_mode (struct cx231xx*,int ) ;
 int dvb_bulk_copy ;
 int dvb_isoc_copy ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int start_streaming(struct cx231xx_dvb *dvb)
{
 int rc;
 struct cx231xx *dev = dvb->adapter.priv;

 if (dev->USE_ISO) {
  cx231xx_info("DVB transfer mode is ISO.\n");
  mutex_lock(&dev->i2c_lock);
  cx231xx_enable_i2c_port_3(dev, 0);
  cx231xx_set_alt_setting(dev, INDEX_TS1, 4);
  cx231xx_enable_i2c_port_3(dev, 1);
  mutex_unlock(&dev->i2c_lock);
  rc = cx231xx_set_mode(dev, CX231XX_DIGITAL_MODE);
  if (rc < 0)
   return rc;
  dev->mode_tv = 1;
  return cx231xx_init_isoc(dev, CX231XX_DVB_MAX_PACKETS,
     CX231XX_DVB_NUM_BUFS,
     dev->ts1_mode.max_pkt_size,
     dvb_isoc_copy);
 } else {
  cx231xx_info("DVB transfer mode is BULK.\n");
  cx231xx_set_alt_setting(dev, INDEX_TS1, 0);
  rc = cx231xx_set_mode(dev, CX231XX_DIGITAL_MODE);
  if (rc < 0)
   return rc;
  dev->mode_tv = 1;
  return cx231xx_init_bulk(dev, CX231XX_DVB_MAX_PACKETS,
     CX231XX_DVB_NUM_BUFS,
     dev->ts1_mode.max_pkt_size,
     dvb_bulk_copy);
 }

}
