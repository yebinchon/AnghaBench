
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hpsb_iso {int flags; TYPE_2__* host; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* isoctl ) (struct hpsb_iso*,int ,int) ;} ;


 int HPSB_ISO_DRIVER_STARTED ;
 int XMIT_START ;
 int stub1 (struct hpsb_iso*,int ,int) ;

__attribute__((used)) static int do_iso_xmit_start(struct hpsb_iso *iso, int cycle)
{
 int retval = iso->host->driver->isoctl(iso, XMIT_START, cycle);
 if (retval)
  return retval;

 iso->flags |= HPSB_ISO_DRIVER_STARTED;
 return retval;
}
