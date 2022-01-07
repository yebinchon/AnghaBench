
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hpsb_iso {scalar_t__ type; int flags; TYPE_2__* host; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* isoctl ) (struct hpsb_iso*,int ,unsigned long) ;} ;


 int HPSB_ISO_DRIVER_STARTED ;
 scalar_t__ HPSB_ISO_RECV ;
 int RECV_START ;
 int stub1 (struct hpsb_iso*,int ,unsigned long) ;

int hpsb_iso_recv_start(struct hpsb_iso *iso, int cycle, int tag_mask, int sync)
{
 int retval = 0;
 int isoctl_args[3];

 if (iso->type != HPSB_ISO_RECV)
  return -1;

 if (iso->flags & HPSB_ISO_DRIVER_STARTED)
  return 0;

 if (cycle < -1)
  cycle = -1;
 else if (cycle >= 8000)
  cycle %= 8000;

 isoctl_args[0] = cycle;

 if (tag_mask < 0)

  tag_mask = 0xF;
 isoctl_args[1] = tag_mask;

 isoctl_args[2] = sync;

 retval =
     iso->host->driver->isoctl(iso, RECV_START,
          (unsigned long)&isoctl_args[0]);
 if (retval)
  return retval;

 iso->flags |= HPSB_ISO_DRIVER_STARTED;
 return retval;
}
