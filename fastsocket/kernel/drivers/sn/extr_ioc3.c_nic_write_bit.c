
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ioc3_driver_data {TYPE_1__* vma; } ;
struct TYPE_2__ {int mcr; } ;


 int mcr_pack (int,int) ;
 int nic_wait (struct ioc3_driver_data*) ;
 int writel (int ,int *) ;

__attribute__((used)) static void nic_write_bit(struct ioc3_driver_data *idd, int bit)
{
 if (bit)
  writel(mcr_pack(6, 110), &idd->vma->mcr);
 else
  writel(mcr_pack(80, 30), &idd->vma->mcr);

 nic_wait(idd);
}
