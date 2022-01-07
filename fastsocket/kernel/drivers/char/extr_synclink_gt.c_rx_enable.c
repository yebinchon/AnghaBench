
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {unsigned int rbuf_fill_level; int rx_pio; int lock; scalar_t__ rx_enabled; int device_name; } ;


 int BIT3 ;
 int DBGINFO (char*) ;
 unsigned int DMABUFSIZE ;
 int EINVAL ;
 int RCR ;
 int rd_reg16 (struct slgt_info*,int ) ;
 int rx_start (struct slgt_info*) ;
 int rx_stop (struct slgt_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wr_reg16 (struct slgt_info*,int ,int) ;

__attribute__((used)) static int rx_enable(struct slgt_info *info, int enable)
{
  unsigned long flags;
 unsigned int rbuf_fill_level;
 DBGINFO(("%s rx_enable(%08x)\n", info->device_name, enable));
 spin_lock_irqsave(&info->lock,flags);





 rbuf_fill_level = ((unsigned int)enable) >> 16;
 if (rbuf_fill_level) {
  if ((rbuf_fill_level > DMABUFSIZE) || (rbuf_fill_level % 4)) {
   spin_unlock_irqrestore(&info->lock, flags);
   return -EINVAL;
  }
  info->rbuf_fill_level = rbuf_fill_level;
  if (rbuf_fill_level < 128)
   info->rx_pio = 1;
  else
   info->rx_pio = 0;
  rx_stop(info);
 }







 enable &= 3;
 if (enable) {
  if (!info->rx_enabled)
   rx_start(info);
  else if (enable == 2) {

   wr_reg16(info, RCR, rd_reg16(info, RCR) | BIT3);
  }
 } else {
  if (info->rx_enabled)
   rx_stop(info);
 }
 spin_unlock_irqrestore(&info->lock,flags);
 return 0;
}
