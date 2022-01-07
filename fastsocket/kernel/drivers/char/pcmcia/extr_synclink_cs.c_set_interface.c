
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int if_mode; int lock; int device_name; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 scalar_t__ DEBUG_LEVEL_INFO ;



 int PVR ;
 unsigned char PVR_RS232 ;
 unsigned char PVR_RS422 ;
 unsigned char PVR_V35 ;
 scalar_t__ debug_level ;
 int printk (char*,int ,int) ;
 int read_reg (TYPE_1__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_reg (TYPE_1__*,int ,unsigned char) ;

__attribute__((used)) static int set_interface(MGSLPC_INFO * info, int if_mode)
{
  unsigned long flags;
 unsigned char val;
 if (debug_level >= DEBUG_LEVEL_INFO)
  printk("set_interface(%s,%d)\n", info->device_name, if_mode);
 spin_lock_irqsave(&info->lock,flags);
 info->if_mode = if_mode;

 val = read_reg(info, PVR) & 0x0f;
 switch (info->if_mode)
 {
 case 130: val |= PVR_RS232; break;
 case 128: val |= PVR_V35; break;
 case 129: val |= PVR_RS422; break;
 }
 write_reg(info, PVR, val);

 spin_unlock_irqrestore(&info->lock,flags);
 return 0;
}
