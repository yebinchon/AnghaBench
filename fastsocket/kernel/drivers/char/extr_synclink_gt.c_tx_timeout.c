
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int txtimeout; } ;
struct TYPE_3__ {scalar_t__ mode; } ;
struct slgt_info {scalar_t__ netcount; int lock; TYPE_2__ icount; TYPE_1__ params; scalar_t__ tx_active; int device_name; } ;


 int DBGINFO (char*) ;
 scalar_t__ MGSL_MODE_HDLC ;
 int bh_transmit (struct slgt_info*) ;
 int hdlcdev_tx_done (struct slgt_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_stop (struct slgt_info*) ;

__attribute__((used)) static void tx_timeout(unsigned long context)
{
 struct slgt_info *info = (struct slgt_info*)context;
 unsigned long flags;

 DBGINFO(("%s tx_timeout\n", info->device_name));
 if(info->tx_active && info->params.mode == MGSL_MODE_HDLC) {
  info->icount.txtimeout++;
 }
 spin_lock_irqsave(&info->lock,flags);
 tx_stop(info);
 spin_unlock_irqrestore(&info->lock,flags);






  bh_transmit(info);
}
