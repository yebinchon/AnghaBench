
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_9__ {scalar_t__ r_irq_ctrl; } ;
struct TYPE_7__ {int clock_mode; } ;
struct TYPE_8__ {TYPE_4__ mr; TYPE_1__ driver_data; int lock; } ;
typedef TYPE_2__ hfc4s8s_hw ;


 int M_FZ_MD ;
 int M_PCM_CLK ;
 int M_PCM_MD ;
 int M_SRES ;
 int R_BRG_PCM_CFG ;
 int R_CIRM ;
 int R_CTRL ;
 int R_FIFO_MD ;
 int R_PCM_MD0 ;
 int R_RAM_MISC ;
 int R_TI_WD ;
 int TRANS_TIMER_MODE ;
 int Write_hfc8 (TYPE_2__*,int ,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int udelay (int) ;
 int wait_busy (TYPE_2__*) ;

__attribute__((used)) static void
chipreset(hfc4s8s_hw * hw)
{
 u_long flags;

 spin_lock_irqsave(&hw->lock, flags);
 Write_hfc8(hw, R_CTRL, 0);
 Write_hfc8(hw, R_RAM_MISC, 0);
 Write_hfc8(hw, R_FIFO_MD, 0);
 Write_hfc8(hw, R_CIRM, M_SRES);
 hw->mr.r_irq_ctrl = 0;
 spin_unlock_irqrestore(&hw->lock, flags);

 udelay(3);
 Write_hfc8(hw, R_CIRM, 0);
 wait_busy(hw);

 Write_hfc8(hw, R_PCM_MD0, M_PCM_MD);
 Write_hfc8(hw, R_RAM_MISC, M_FZ_MD);
 if (hw->driver_data.clock_mode == 1)
  Write_hfc8(hw, R_BRG_PCM_CFG, M_PCM_CLK);
 Write_hfc8(hw, R_TI_WD, TRANS_TIMER_MODE);

 memset(&hw->mr, 0, sizeof(hw->mr));
}
