
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
typedef int u16 ;
struct hpsb_iso_packet_info {void* sy; void* tag; int len; int offset; } ;
struct hpsb_iso {scalar_t__ type; scalar_t__ n_ready_packets; size_t first_packet; int buf_packets; int xmit_cycle; scalar_t__ prebuffer; int lock; int start_cycle; TYPE_2__* host; struct hpsb_iso_packet_info* infos; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* isoctl ) (struct hpsb_iso*,int ,unsigned long) ;} ;


 int EBUSY ;
 int EFAULT ;
 int EINVAL ;
 scalar_t__ HPSB_ISO_XMIT ;
 int XMIT_QUEUE ;
 int do_iso_xmit_start (struct hpsb_iso*,int ) ;
 scalar_t__ hpsb_iso_check_offset_len (struct hpsb_iso*,int ,int ,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct hpsb_iso*,int ,unsigned long) ;

int hpsb_iso_xmit_queue_packet(struct hpsb_iso *iso, u32 offset, u16 len,
          u8 tag, u8 sy)
{
 struct hpsb_iso_packet_info *info;
 unsigned long flags;
 int rv;

 if (iso->type != HPSB_ISO_XMIT)
  return -EINVAL;


 if (iso->n_ready_packets <= 0) {
  return -EBUSY;
 }

 info = &iso->infos[iso->first_packet];


 if (hpsb_iso_check_offset_len
     (iso, offset, len, &info->offset, &info->len))
  return -EFAULT;

 info->tag = tag;
 info->sy = sy;

 spin_lock_irqsave(&iso->lock, flags);

 rv = iso->host->driver->isoctl(iso, XMIT_QUEUE, (unsigned long)info);
 if (rv)
  goto out;


 iso->first_packet = (iso->first_packet + 1) % iso->buf_packets;
 iso->xmit_cycle = (iso->xmit_cycle + 1) % 8000;
 iso->n_ready_packets--;

 if (iso->prebuffer != 0) {
  iso->prebuffer--;
  if (iso->prebuffer <= 0) {
   iso->prebuffer = 0;
   rv = do_iso_xmit_start(iso, iso->start_cycle);
  }
 }

      out:
 spin_unlock_irqrestore(&iso->lock, flags);
 return rv;
}
