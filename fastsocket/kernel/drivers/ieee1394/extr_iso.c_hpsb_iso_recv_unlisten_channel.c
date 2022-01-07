
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hpsb_iso {scalar_t__ type; int channel; TYPE_2__* host; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* isoctl ) (struct hpsb_iso*,int ,unsigned char) ;} ;


 int EINVAL ;
 scalar_t__ HPSB_ISO_RECV ;
 int RECV_UNLISTEN_CHANNEL ;
 int stub1 (struct hpsb_iso*,int ,unsigned char) ;

int hpsb_iso_recv_unlisten_channel(struct hpsb_iso *iso, unsigned char channel)
{
 if (iso->type != HPSB_ISO_RECV || iso->channel != -1 || channel >= 64)
  return -EINVAL;
 return iso->host->driver->isoctl(iso, RECV_UNLISTEN_CHANNEL, channel);
}
