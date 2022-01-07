
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ioc3_driver_data {int ir_lock; TYPE_1__* vma; } ;
struct TYPE_2__ {int sio_iec; int sio_ies; } ;




 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,int *) ;

__attribute__((used)) static void write_ireg(struct ioc3_driver_data *idd, uint32_t val, int which)
{
 unsigned long flags;

 spin_lock_irqsave(&idd->ir_lock, flags);
 switch (which) {
 case 128:
  writel(val, &idd->vma->sio_ies);
  break;
 case 129:
  writel(val, &idd->vma->sio_iec);
  break;
 }
 spin_unlock_irqrestore(&idd->ir_lock, flags);
}
