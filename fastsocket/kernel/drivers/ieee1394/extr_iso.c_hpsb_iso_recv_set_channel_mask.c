
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct hpsb_iso {scalar_t__ type; int channel; TYPE_2__* host; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* isoctl ) (struct hpsb_iso*,int ,unsigned long) ;} ;


 int EINVAL ;
 scalar_t__ HPSB_ISO_RECV ;
 int RECV_SET_CHANNEL_MASK ;
 int stub1 (struct hpsb_iso*,int ,unsigned long) ;

int hpsb_iso_recv_set_channel_mask(struct hpsb_iso *iso, u64 mask)
{
 if (iso->type != HPSB_ISO_RECV || iso->channel != -1)
  return -EINVAL;
 return iso->host->driver->isoctl(iso, RECV_SET_CHANNEL_MASK,
      (unsigned long)&mask);
}
