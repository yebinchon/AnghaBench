
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hpsb_iso {int flags; scalar_t__ type; TYPE_2__* host; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* isoctl ) (struct hpsb_iso*,int ,int ) ;} ;


 int HPSB_ISO_DRIVER_STARTED ;
 scalar_t__ HPSB_ISO_XMIT ;
 int RECV_STOP ;
 int XMIT_STOP ;
 int stub1 (struct hpsb_iso*,int ,int ) ;

void hpsb_iso_stop(struct hpsb_iso *iso)
{
 if (!(iso->flags & HPSB_ISO_DRIVER_STARTED))
  return;

 iso->host->driver->isoctl(iso, iso->type == HPSB_ISO_XMIT ?
      XMIT_STOP : RECV_STOP, 0);
 iso->flags &= ~HPSB_ISO_DRIVER_STARTED;
}
