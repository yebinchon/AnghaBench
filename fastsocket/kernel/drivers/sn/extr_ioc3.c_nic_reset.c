
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ioc3_driver_data {TYPE_1__* vma; } ;
struct TYPE_2__ {int mcr; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mcr_pack (int,int) ;
 int nic_wait (struct ioc3_driver_data*) ;
 int udelay (int) ;
 int writel (int ,int *) ;

__attribute__((used)) static int nic_reset(struct ioc3_driver_data *idd)
{
        int presence;
 unsigned long flags;

 local_irq_save(flags);
 writel(mcr_pack(500, 65), &idd->vma->mcr);
 presence = nic_wait(idd);
 local_irq_restore(flags);

 udelay(500);

        return presence;
}
