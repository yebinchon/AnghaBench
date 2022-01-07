
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smi_info {int si_state; int si_sm; TYPE_1__* handlers; } ;
struct TYPE_2__ {int (* start_transaction ) (int ,unsigned char*,int) ;} ;


 unsigned char IPMI_CLEAR_MSG_FLAGS_CMD ;
 int IPMI_NETFN_APP_REQUEST ;
 int SI_CLEARING_FLAGS ;
 unsigned char WDT_PRE_TIMEOUT_INT ;
 int stub1 (int ,unsigned char*,int) ;

__attribute__((used)) static void start_clear_flags(struct smi_info *smi_info)
{
 unsigned char msg[3];


 msg[0] = (IPMI_NETFN_APP_REQUEST << 2);
 msg[1] = IPMI_CLEAR_MSG_FLAGS_CMD;
 msg[2] = WDT_PRE_TIMEOUT_INT;

 smi_info->handlers->start_transaction(smi_info->si_sm, msg, 3);
 smi_info->si_state = SI_CLEARING_FLAGS;
}
