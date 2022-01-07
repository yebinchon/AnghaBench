
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smi_info {int msg_flags; void* si_state; scalar_t__ (* oem_data_avail_handler ) (struct smi_info*) ;TYPE_2__* curr_msg; int si_sm; TYPE_1__* handlers; int intf; } ;
struct TYPE_4__ {int* data; int data_size; } ;
struct TYPE_3__ {int (* start_transaction ) (int ,int*,int) ;} ;


 int EVENT_MSG_BUFFER_FULL ;
 int IPMI_GET_MSG_CMD ;
 int IPMI_NETFN_APP_REQUEST ;
 int IPMI_READ_EVENT_MSG_BUFFER_CMD ;
 int OEM_DATA_AVAIL ;
 int RECEIVE_MSG_AVAIL ;
 void* SI_GETTING_EVENTS ;
 void* SI_GETTING_MESSAGES ;
 void* SI_NORMAL ;
 int WDT_PRE_TIMEOUT_INT ;
 int disable_si_irq (struct smi_info*) ;
 int enable_si_irq (struct smi_info*) ;
 void* ipmi_alloc_smi_msg () ;
 int ipmi_smi_watchdog_pretimeout (int ) ;
 int smi_inc_stat (struct smi_info*,int ) ;
 int start_clear_flags (struct smi_info*) ;
 int stub1 (int ,int*,int) ;
 int stub2 (int ,int*,int) ;
 scalar_t__ stub3 (struct smi_info*) ;
 int watchdog_pretimeouts ;

__attribute__((used)) static void handle_flags(struct smi_info *smi_info)
{
 retry:
 if (smi_info->msg_flags & WDT_PRE_TIMEOUT_INT) {

  smi_inc_stat(smi_info, watchdog_pretimeouts);

  start_clear_flags(smi_info);
  smi_info->msg_flags &= ~WDT_PRE_TIMEOUT_INT;
  ipmi_smi_watchdog_pretimeout(smi_info->intf);
 } else if (smi_info->msg_flags & RECEIVE_MSG_AVAIL) {

  smi_info->curr_msg = ipmi_alloc_smi_msg();
  if (!smi_info->curr_msg) {
   disable_si_irq(smi_info);
   smi_info->si_state = SI_NORMAL;
   return;
  }
  enable_si_irq(smi_info);

  smi_info->curr_msg->data[0] = (IPMI_NETFN_APP_REQUEST << 2);
  smi_info->curr_msg->data[1] = IPMI_GET_MSG_CMD;
  smi_info->curr_msg->data_size = 2;

  smi_info->handlers->start_transaction(
   smi_info->si_sm,
   smi_info->curr_msg->data,
   smi_info->curr_msg->data_size);
  smi_info->si_state = SI_GETTING_MESSAGES;
 } else if (smi_info->msg_flags & EVENT_MSG_BUFFER_FULL) {

  smi_info->curr_msg = ipmi_alloc_smi_msg();
  if (!smi_info->curr_msg) {
   disable_si_irq(smi_info);
   smi_info->si_state = SI_NORMAL;
   return;
  }
  enable_si_irq(smi_info);

  smi_info->curr_msg->data[0] = (IPMI_NETFN_APP_REQUEST << 2);
  smi_info->curr_msg->data[1] = IPMI_READ_EVENT_MSG_BUFFER_CMD;
  smi_info->curr_msg->data_size = 2;

  smi_info->handlers->start_transaction(
   smi_info->si_sm,
   smi_info->curr_msg->data,
   smi_info->curr_msg->data_size);
  smi_info->si_state = SI_GETTING_EVENTS;
 } else if (smi_info->msg_flags & OEM_DATA_AVAIL &&
     smi_info->oem_data_avail_handler) {
  if (smi_info->oem_data_avail_handler(smi_info))
   goto retry;
 } else
  smi_info->si_state = SI_NORMAL;
}
