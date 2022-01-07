
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_iso {scalar_t__ type; scalar_t__ buf_packets; int waitq; } ;


 int EINVAL ;
 scalar_t__ HPSB_ISO_XMIT ;
 scalar_t__ hpsb_iso_n_ready (struct hpsb_iso*) ;
 int wait_event_interruptible (int ,int) ;

int hpsb_iso_xmit_sync(struct hpsb_iso *iso)
{
 if (iso->type != HPSB_ISO_XMIT)
  return -EINVAL;

 return wait_event_interruptible(iso->waitq,
     hpsb_iso_n_ready(iso) ==
     iso->buf_packets);
}
