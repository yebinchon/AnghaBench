
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cumanascsi2_info {int info; } ;
typedef int irqreturn_t ;


 int fas216_intr (int *) ;

__attribute__((used)) static irqreturn_t
cumanascsi_2_intr(int irq, void *dev_id)
{
 struct cumanascsi2_info *info = dev_id;

 return fas216_intr(&info->info);
}
