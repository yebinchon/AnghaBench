
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smi_info {int si_state; TYPE_2__* curr_msg; int si_sm; TYPE_1__* handlers; int req_events; int intf; } ;
typedef enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;
struct TYPE_4__ {int* data; int data_size; } ;
struct TYPE_3__ {int (* event ) (int ,int) ;int (* start_transaction ) (int ,unsigned char*,int) ;} ;


 int IPMI_ERR_UNSPECIFIED ;
 unsigned char IPMI_GET_MSG_FLAGS_CMD ;
 int IPMI_NETFN_APP_REQUEST ;
 int IPMI_READ_EVENT_MSG_BUFFER_CMD ;
 int SI_GETTING_EVENTS ;
 int SI_GETTING_FLAGS ;
 int SI_NORMAL ;
 int SI_SM_ATTN ;
 int SI_SM_CALL_WITHOUT_DELAY ;
 int SI_SM_HOSED ;
 int SI_SM_IDLE ;
 int SI_SM_TRANSACTION_COMPLETE ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int attentions ;
 int complete_transactions ;
 int handle_transaction_done (struct smi_info*) ;
 int hosed_count ;
 int idles ;
 TYPE_2__* ipmi_alloc_smi_msg () ;
 scalar_t__ likely (int ) ;
 int return_hosed_msg (struct smi_info*,int ) ;
 int smi_inc_stat (struct smi_info*,int ) ;
 int start_next_msg (struct smi_info*) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int) ;
 int stub4 (int ,int) ;
 int stub5 (int ,unsigned char*,int) ;
 int stub6 (int ,unsigned char*,int) ;

__attribute__((used)) static enum si_sm_result smi_event_handler(struct smi_info *smi_info,
        int time)
{
 enum si_sm_result si_sm_result;

 restart:
 si_sm_result = smi_info->handlers->event(smi_info->si_sm, time);
 time = 0;
 while (si_sm_result == SI_SM_CALL_WITHOUT_DELAY)
  si_sm_result = smi_info->handlers->event(smi_info->si_sm, 0);

 if (si_sm_result == SI_SM_TRANSACTION_COMPLETE) {
  smi_inc_stat(smi_info, complete_transactions);

  handle_transaction_done(smi_info);
  si_sm_result = smi_info->handlers->event(smi_info->si_sm, 0);
 } else if (si_sm_result == SI_SM_HOSED) {
  smi_inc_stat(smi_info, hosed_count);





  smi_info->si_state = SI_NORMAL;
  if (smi_info->curr_msg != ((void*)0)) {





   return_hosed_msg(smi_info, IPMI_ERR_UNSPECIFIED);
  }
  si_sm_result = smi_info->handlers->event(smi_info->si_sm, 0);
 }





 if (likely(smi_info->intf) && si_sm_result == SI_SM_ATTN) {
  unsigned char msg[2];

  smi_inc_stat(smi_info, attentions);
  msg[0] = (IPMI_NETFN_APP_REQUEST << 2);
  msg[1] = IPMI_GET_MSG_FLAGS_CMD;

  smi_info->handlers->start_transaction(
   smi_info->si_sm, msg, 2);
  smi_info->si_state = SI_GETTING_FLAGS;
  goto restart;
 }


 if (si_sm_result == SI_SM_IDLE) {
  smi_inc_stat(smi_info, idles);

  si_sm_result = start_next_msg(smi_info);
  if (si_sm_result != SI_SM_IDLE)
   goto restart;
 }

 if ((si_sm_result == SI_SM_IDLE)
     && (atomic_read(&smi_info->req_events))) {




  atomic_set(&smi_info->req_events, 0);

  smi_info->curr_msg = ipmi_alloc_smi_msg();
  if (!smi_info->curr_msg)
   goto out;

  smi_info->curr_msg->data[0] = (IPMI_NETFN_APP_REQUEST << 2);
  smi_info->curr_msg->data[1] = IPMI_READ_EVENT_MSG_BUFFER_CMD;
  smi_info->curr_msg->data_size = 2;

  smi_info->handlers->start_transaction(
   smi_info->si_sm,
   smi_info->curr_msg->data,
   smi_info->curr_msg->data_size);
  smi_info->si_state = SI_GETTING_EVENTS;
  goto restart;
 }
 out:
 return si_sm_result;
}
