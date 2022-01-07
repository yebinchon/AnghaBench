
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iucv_message {scalar_t__ length; } ;
struct iucv_tty_buffer {int list; struct iucv_message msg; } ;
struct iucv_path {struct hvc_iucv_private* private; } ;
struct hvc_iucv_private {scalar_t__ tty_state; int lock; int tty_inqueue; } ;


 int GFP_ATOMIC ;
 int MSG_MAX_DATALEN ;
 scalar_t__ MSG_SIZE (int ) ;
 scalar_t__ TTY_CLOSED ;
 struct iucv_tty_buffer* alloc_tty_buffer (int ,int ) ;
 int hvc_kick () ;
 int iucv_message_reject (struct iucv_path*,struct iucv_message*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void hvc_iucv_msg_pending(struct iucv_path *path,
     struct iucv_message *msg)
{
 struct hvc_iucv_private *priv = path->private;
 struct iucv_tty_buffer *rb;


 if (msg->length > MSG_SIZE(MSG_MAX_DATALEN)) {
  iucv_message_reject(path, msg);
  return;
 }

 spin_lock(&priv->lock);


 if (priv->tty_state == TTY_CLOSED) {
  iucv_message_reject(path, msg);
  goto unlock_return;
 }


 rb = alloc_tty_buffer(0, GFP_ATOMIC);
 if (!rb) {
  iucv_message_reject(path, msg);
  goto unlock_return;
 }
 rb->msg = *msg;

 list_add_tail(&rb->list, &priv->tty_inqueue);

 hvc_kick();

unlock_return:
 spin_unlock(&priv->lock);
}
