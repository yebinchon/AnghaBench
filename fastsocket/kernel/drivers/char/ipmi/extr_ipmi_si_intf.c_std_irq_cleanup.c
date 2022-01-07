
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* outputb ) (TYPE_1__*,int ,int ) ;} ;
struct smi_info {scalar_t__ si_type; int irq; TYPE_1__ io; } ;


 int IPMI_BT_INTMASK_REG ;
 scalar_t__ SI_BT ;
 int free_irq (int ,struct smi_info*) ;
 int stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void std_irq_cleanup(struct smi_info *info)
{
 if (info->si_type == SI_BT)

  info->io.outputb(&info->io, IPMI_BT_INTMASK_REG, 0);
 free_irq(info->irq, info);
}
