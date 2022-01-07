
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_t ;
typedef size_t u8 ;
typedef int u32 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {scalar_t__ currenttxskb; scalar_t__ psstate; scalar_t__ tx_pending_len; size_t resp_idx; scalar_t__ connect_status; int nr_retries; int (* hw_host_to_card ) (struct lbs_private*,int ,int ,scalar_t__) ;scalar_t__ mesh_connect_status; int cmd_pending; int command_timer; int driver_lock; scalar_t__ mesh_dev; scalar_t__ dev; void* dnld_sent; int tx_pending_buf; int cmdpendingq; struct cmd_ctrl_node* cur_cmd; int fw_ready; int event_fifo; scalar_t__ cmd_timed_out; int (* reset_card ) (struct lbs_private*) ;scalar_t__* resp_len; int * resp_buf; scalar_t__ surpriseremoved; int waitq; void* psmode; } ;
struct cmd_ctrl_node {int list; TYPE_1__* cmdbuf; } ;
typedef int event ;
struct TYPE_2__ {int command; } ;


 void* DNLD_RES_RECEIVED ;
 int ETIMEDOUT ;
 scalar_t__ LBS_CONNECTED ;
 int LBS_DEB_THREAD ;
 int MVMS_DAT ;
 scalar_t__ PS_STATE_AWAKE ;
 scalar_t__ PS_STATE_PRE_SLEEP ;
 scalar_t__ PS_STATE_SLEEP ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __kfifo_get (int ,unsigned char*,int) ;
 scalar_t__ __kfifo_len (int ) ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int del_timer (int *) ;
 int init_waitqueue_entry (int *,int ) ;
 scalar_t__ kthread_should_stop () ;
 int lbs_complete_command (struct lbs_private*,struct cmd_ctrl_node*,int ) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_deb_thread (char*,...) ;
 int lbs_deb_tx (char*,int) ;
 int lbs_execute_next_command (struct lbs_private*) ;
 int lbs_pr_alert (char*) ;
 int lbs_pr_info (char*,int ,...) ;
 int lbs_process_command_response (struct lbs_private*,int ,scalar_t__) ;
 int lbs_process_event (struct lbs_private*,int ) ;
 int lbs_ps_confirm_sleep (struct lbs_private*) ;
 int le16_to_cpu (int ) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int netif_wake_queue (scalar_t__) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct lbs_private*) ;
 int stub2 (struct lbs_private*,int ,int ,scalar_t__) ;
 int wake_up_all (int *) ;

__attribute__((used)) static int lbs_thread(void *data)
{
 struct net_device *dev = data;
 struct lbs_private *priv = dev->ml_priv;
 wait_queue_t wait;

 lbs_deb_enter(LBS_DEB_THREAD);

 init_waitqueue_entry(&wait, current);

 for (;;) {
  int shouldsleep;
  u8 resp_idx;

  lbs_deb_thread("1: currenttxskb %p, dnld_sent %d\n",
    priv->currenttxskb, priv->dnld_sent);

  add_wait_queue(&priv->waitq, &wait);
  set_current_state(TASK_INTERRUPTIBLE);
  spin_lock_irq(&priv->driver_lock);

  if (kthread_should_stop())
   shouldsleep = 0;
  else if (priv->surpriseremoved)
   shouldsleep = 1;
  else if (priv->psstate == PS_STATE_SLEEP)
   shouldsleep = 1;
  else if (priv->cmd_timed_out)
   shouldsleep = 0;
  else if (!priv->fw_ready)
   shouldsleep = 1;
  else if (priv->dnld_sent)
   shouldsleep = 1;
  else if (priv->tx_pending_len > 0)
   shouldsleep = 0;
  else if (priv->resp_len[priv->resp_idx])
   shouldsleep = 0;
  else if (priv->cur_cmd)
   shouldsleep = 1;
  else if (!list_empty(&priv->cmdpendingq))
   shouldsleep = 0;
  else if (__kfifo_len(priv->event_fifo))
   shouldsleep = 0;
  else
   shouldsleep = 1;

  if (shouldsleep) {
   lbs_deb_thread("sleeping, connect_status %d, "
    "psmode %d, psstate %d\n",
    priv->connect_status,
    priv->psmode, priv->psstate);
   spin_unlock_irq(&priv->driver_lock);
   schedule();
  } else
   spin_unlock_irq(&priv->driver_lock);

  lbs_deb_thread("2: currenttxskb %p, dnld_send %d\n",
          priv->currenttxskb, priv->dnld_sent);

  set_current_state(TASK_RUNNING);
  remove_wait_queue(&priv->waitq, &wait);

  lbs_deb_thread("3: currenttxskb %p, dnld_sent %d\n",
          priv->currenttxskb, priv->dnld_sent);

  if (kthread_should_stop()) {
   lbs_deb_thread("break from main thread\n");
   break;
  }

  if (priv->surpriseremoved) {
   lbs_deb_thread("adapter removed; waiting to die...\n");
   continue;
  }

  lbs_deb_thread("4: currenttxskb %p, dnld_sent %d\n",
         priv->currenttxskb, priv->dnld_sent);


  spin_lock_irq(&priv->driver_lock);
  resp_idx = priv->resp_idx;
  if (priv->resp_len[resp_idx]) {
   spin_unlock_irq(&priv->driver_lock);
   lbs_process_command_response(priv,
    priv->resp_buf[resp_idx],
    priv->resp_len[resp_idx]);
   spin_lock_irq(&priv->driver_lock);
   priv->resp_len[resp_idx] = 0;
  }
  spin_unlock_irq(&priv->driver_lock);


  if (priv->cmd_timed_out && priv->cur_cmd) {
   struct cmd_ctrl_node *cmdnode = priv->cur_cmd;

   if (++priv->nr_retries > 3) {
    lbs_pr_info("Excessive timeouts submitting "
     "command 0x%04x\n",
     le16_to_cpu(cmdnode->cmdbuf->command));
    lbs_complete_command(priv, cmdnode, -ETIMEDOUT);
    priv->nr_retries = 0;
    if (priv->reset_card)
     priv->reset_card(priv);
   } else {
    priv->cur_cmd = ((void*)0);
    priv->dnld_sent = DNLD_RES_RECEIVED;
    lbs_pr_info("requeueing command 0x%04x due "
     "to timeout (#%d)\n",
     le16_to_cpu(cmdnode->cmdbuf->command),
     priv->nr_retries);



    list_add(&cmdnode->list, &priv->cmdpendingq);
   }
  }
  priv->cmd_timed_out = 0;


  spin_lock_irq(&priv->driver_lock);
  while (__kfifo_len(priv->event_fifo)) {
   u32 event;

   __kfifo_get(priv->event_fifo, (unsigned char *) &event,
    sizeof(event));
   spin_unlock_irq(&priv->driver_lock);
   lbs_process_event(priv, event);
   spin_lock_irq(&priv->driver_lock);
  }
  spin_unlock_irq(&priv->driver_lock);

  if (!priv->fw_ready)
   continue;


  if (priv->psstate == PS_STATE_PRE_SLEEP &&
      !priv->dnld_sent && !priv->cur_cmd) {
   if (priv->connect_status == LBS_CONNECTED) {
    lbs_deb_thread("pre-sleep, currenttxskb %p, "
     "dnld_sent %d, cur_cmd %p\n",
     priv->currenttxskb, priv->dnld_sent,
     priv->cur_cmd);

    lbs_ps_confirm_sleep(priv);
   } else {





    priv->psstate = PS_STATE_AWAKE;
    lbs_pr_alert("ignore PS_SleepConfirm in "
     "non-connected state\n");
   }
  }




  if ((priv->psstate == PS_STATE_SLEEP) ||
      (priv->psstate == PS_STATE_PRE_SLEEP))
   continue;


  if (!priv->dnld_sent && !priv->cur_cmd)
   lbs_execute_next_command(priv);




  if (!list_empty(&priv->cmdpendingq))
   wake_up_all(&priv->cmd_pending);

  spin_lock_irq(&priv->driver_lock);
  if (!priv->dnld_sent && priv->tx_pending_len > 0) {
   int ret = priv->hw_host_to_card(priv, MVMS_DAT,
       priv->tx_pending_buf,
       priv->tx_pending_len);
   if (ret) {
    lbs_deb_tx("host_to_card failed %d\n", ret);
    priv->dnld_sent = DNLD_RES_RECEIVED;
   }
   priv->tx_pending_len = 0;
   if (!priv->currenttxskb) {


    if (priv->connect_status == LBS_CONNECTED)
     netif_wake_queue(priv->dev);
    if (priv->mesh_dev &&
        priv->mesh_connect_status == LBS_CONNECTED)
     netif_wake_queue(priv->mesh_dev);
   }
  }
  spin_unlock_irq(&priv->driver_lock);
 }

 del_timer(&priv->command_timer);
 wake_up_all(&priv->cmd_pending);

 lbs_deb_leave(LBS_DEB_THREAD);
 return 0;
}
