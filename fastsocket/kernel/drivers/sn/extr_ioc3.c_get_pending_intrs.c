
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ioc3_driver_data {int ir_lock; TYPE_1__* vma; } ;
struct TYPE_2__ {int sio_ies; int sio_ir; } ;


 int readl (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline uint32_t get_pending_intrs(struct ioc3_driver_data *idd)
{
 unsigned long flag;
 uint32_t intrs = 0;

 spin_lock_irqsave(&idd->ir_lock, flag);
 intrs = readl(&idd->vma->sio_ir);
 intrs &= readl(&idd->vma->sio_ies);
 spin_unlock_irqrestore(&idd->ir_lock, flag);
 return intrs;
}
