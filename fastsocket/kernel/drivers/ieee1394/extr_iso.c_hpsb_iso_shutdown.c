
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hpsb_iso {int flags; scalar_t__ type; int data_buf; TYPE_2__* host; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* isoctl ) (struct hpsb_iso*,int ,int ) ;} ;


 int HPSB_ISO_DRIVER_INIT ;
 scalar_t__ HPSB_ISO_XMIT ;
 int RECV_SHUTDOWN ;
 int XMIT_SHUTDOWN ;
 int dma_region_free (int *) ;
 int hpsb_iso_stop (struct hpsb_iso*) ;
 int kfree (struct hpsb_iso*) ;
 int stub1 (struct hpsb_iso*,int ,int ) ;

void hpsb_iso_shutdown(struct hpsb_iso *iso)
{
 if (iso->flags & HPSB_ISO_DRIVER_INIT) {
  hpsb_iso_stop(iso);
  iso->host->driver->isoctl(iso, iso->type == HPSB_ISO_XMIT ?
       XMIT_SHUTDOWN : RECV_SHUTDOWN, 0);
  iso->flags &= ~HPSB_ISO_DRIVER_INIT;
 }

 dma_region_free(&iso->data_buf);
 kfree(iso);
}
