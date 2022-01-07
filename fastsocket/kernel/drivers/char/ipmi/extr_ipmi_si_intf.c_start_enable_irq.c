
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smi_info {int si_state; int si_sm; TYPE_1__* handlers; } ;
struct TYPE_2__ {int (* start_transaction ) (int ,unsigned char*,int) ;} ;


 unsigned char IPMI_GET_BMC_GLOBAL_ENABLES_CMD ;
 int IPMI_NETFN_APP_REQUEST ;
 int SI_ENABLE_INTERRUPTS1 ;
 int stub1 (int ,unsigned char*,int) ;

__attribute__((used)) static void start_enable_irq(struct smi_info *smi_info)
{
 unsigned char msg[2];





 msg[0] = (IPMI_NETFN_APP_REQUEST << 2);
 msg[1] = IPMI_GET_BMC_GLOBAL_ENABLES_CMD;

 smi_info->handlers->start_transaction(smi_info->si_sm, msg, 2);
 smi_info->si_state = SI_ENABLE_INTERRUPTS1;
}
