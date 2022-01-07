
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_iso {int n_ready_packets; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int hpsb_iso_n_ready(struct hpsb_iso *iso)
{
 unsigned long flags;
 int val;

 spin_lock_irqsave(&iso->lock, flags);
 val = iso->n_ready_packets;
 spin_unlock_irqrestore(&iso->lock, flags);

 return val;
}
