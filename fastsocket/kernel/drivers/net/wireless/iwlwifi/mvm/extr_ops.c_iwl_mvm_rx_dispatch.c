
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {scalar_t__ cmd; } ;
struct iwl_rx_packet {TYPE_1__ hdr; } ;
struct iwl_rx_handlers {scalar_t__ cmd_id; int (* fn ) (struct iwl_mvm*,struct iwl_rx_cmd_buffer*,struct iwl_device_cmd*) ;int async; } ;
struct iwl_rx_cmd_buffer {int _rx_page_order; int _offset; } ;
struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {int async_handlers_wk; int async_handlers_lock; int async_handlers_list; int notif_wait; } ;
struct iwl_device_cmd {int dummy; } ;
struct TYPE_4__ {int _rx_page_order; int _offset; int _page; } ;
struct iwl_async_handler_entry {int (* fn ) (struct iwl_mvm*,struct iwl_rx_cmd_buffer*,struct iwl_device_cmd*) ;int list; TYPE_2__ rxb; } ;


 size_t ARRAY_SIZE (struct iwl_rx_handlers*) ;
 int GFP_ATOMIC ;
 struct iwl_mvm* IWL_OP_MODE_GET_MVM (struct iwl_op_mode*) ;
 struct iwl_rx_handlers* iwl_mvm_rx_handlers ;
 int iwl_notification_wait_notify (int *,struct iwl_rx_packet*) ;
 struct iwl_async_handler_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 int rxb_steal_page (struct iwl_rx_cmd_buffer*) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct iwl_mvm*,struct iwl_rx_cmd_buffer*,struct iwl_device_cmd*) ;

__attribute__((used)) static int iwl_mvm_rx_dispatch(struct iwl_op_mode *op_mode,
          struct iwl_rx_cmd_buffer *rxb,
          struct iwl_device_cmd *cmd)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_mvm *mvm = IWL_OP_MODE_GET_MVM(op_mode);
 u8 i;






 iwl_notification_wait_notify(&mvm->notif_wait, pkt);

 for (i = 0; i < ARRAY_SIZE(iwl_mvm_rx_handlers); i++) {
  const struct iwl_rx_handlers *rx_h = &iwl_mvm_rx_handlers[i];
  struct iwl_async_handler_entry *entry;

  if (rx_h->cmd_id != pkt->hdr.cmd)
   continue;

  if (!rx_h->async)
   return rx_h->fn(mvm, rxb, cmd);

  entry = kzalloc(sizeof(*entry), GFP_ATOMIC);

  if (!entry)
   return 0;

  entry->rxb._page = rxb_steal_page(rxb);
  entry->rxb._offset = rxb->_offset;
  entry->rxb._rx_page_order = rxb->_rx_page_order;
  entry->fn = rx_h->fn;
  spin_lock(&mvm->async_handlers_lock);
  list_add_tail(&entry->list, &mvm->async_handlers_list);
  spin_unlock(&mvm->async_handlers_lock);
  schedule_work(&mvm->async_handlers_wk);
  break;
 }

 return 0;
}
