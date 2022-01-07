
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subch_data_s {int sd_rlock; int sd_rb; int sd_subch; int sd_nasid; } ;


 int CHUNKSIZE ;
 struct subch_data_s* event_sd ;
 int ia64_sn_irtr_recv (int ,int ,int ,int*) ;
 int scdrv_dispatch_event (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
scdrv_event(unsigned long dummy)
{
 int status;
 int len;
 unsigned long flags;
 struct subch_data_s *sd = event_sd;


 len = CHUNKSIZE;
 spin_lock_irqsave(&sd->sd_rlock, flags);
 status = ia64_sn_irtr_recv(sd->sd_nasid, sd->sd_subch,
       sd->sd_rb, &len);

 while (!(status < 0)) {
  spin_unlock_irqrestore(&sd->sd_rlock, flags);
  scdrv_dispatch_event(sd->sd_rb, len);
  len = CHUNKSIZE;
  spin_lock_irqsave(&sd->sd_rlock, flags);
  status = ia64_sn_irtr_recv(sd->sd_nasid, sd->sd_subch,
        sd->sd_rb, &len);
 }
 spin_unlock_irqrestore(&sd->sd_rlock, flags);
}
