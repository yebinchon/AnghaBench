
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpsb_iso {int speed; int flags; } ;
struct hpsb_host {TYPE_1__* driver; } ;
struct TYPE_2__ {scalar_t__ (* isoctl ) (struct hpsb_iso*,int ,int ) ;} ;


 int HPSB_ISO_DMA_DEFAULT ;
 int HPSB_ISO_DRIVER_INIT ;
 int HPSB_ISO_XMIT ;
 int XMIT_INIT ;
 struct hpsb_iso* hpsb_iso_common_init (struct hpsb_host*,int ,unsigned int,unsigned int,int,int ,int,void (*) (struct hpsb_iso*)) ;
 int hpsb_iso_shutdown (struct hpsb_iso*) ;
 scalar_t__ stub1 (struct hpsb_iso*,int ,int ) ;

struct hpsb_iso *hpsb_iso_xmit_init(struct hpsb_host *host,
        unsigned int data_buf_size,
        unsigned int buf_packets,
        int channel,
        int speed,
        int irq_interval,
        void (*callback) (struct hpsb_iso *))
{
 struct hpsb_iso *iso = hpsb_iso_common_init(host, HPSB_ISO_XMIT,
          data_buf_size, buf_packets,
          channel,
          HPSB_ISO_DMA_DEFAULT,
          irq_interval, callback);
 if (!iso)
  return ((void*)0);

 iso->speed = speed;


 if (host->driver->isoctl(iso, XMIT_INIT, 0))
  goto err;

 iso->flags |= HPSB_ISO_DRIVER_INIT;
 return iso;

      err:
 hpsb_iso_shutdown(iso);
 return ((void*)0);
}
