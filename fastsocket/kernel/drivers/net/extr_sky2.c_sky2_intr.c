
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sky2_hw {size_t st_idx; int napi; int * st_le; } ;
typedef int irqreturn_t ;


 int B0_Y2_SP_ISRC2 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int napi_schedule (int *) ;
 int prefetch (int *) ;
 int sky2_read32 (struct sky2_hw*,int ) ;

__attribute__((used)) static irqreturn_t sky2_intr(int irq, void *dev_id)
{
 struct sky2_hw *hw = dev_id;
 u32 status;


 status = sky2_read32(hw, B0_Y2_SP_ISRC2);
 if (status == 0 || status == ~0)
  return IRQ_NONE;

 prefetch(&hw->st_le[hw->st_idx]);

 napi_schedule(&hw->napi);

 return IRQ_HANDLED;
}
