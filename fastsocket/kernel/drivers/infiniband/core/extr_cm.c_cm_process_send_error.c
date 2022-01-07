
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ib_mad_send_buf {struct cm_id_private** context; } ;
struct TYPE_4__ {int send_status; } ;
struct ib_cm_event {TYPE_1__ param; int event; } ;
struct TYPE_5__ {int state; int (* cm_handler ) (TYPE_2__*,struct ib_cm_event*) ;} ;
struct cm_id_private {int lock; TYPE_2__ id; struct ib_mad_send_buf* msg; } ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;
typedef enum ib_cm_state { ____Placeholder_ib_cm_state } ib_cm_state ;


 int IB_CM_DREQ_ERROR ;

 int IB_CM_IDLE ;


 int IB_CM_REP_ERROR ;

 int IB_CM_REQ_ERROR ;

 int IB_CM_SIDR_REQ_ERROR ;

 int cm_enter_timewait (struct cm_id_private*) ;
 int cm_free_msg (struct ib_mad_send_buf*) ;
 int cm_reset_to_idle (struct cm_id_private*) ;
 int ib_destroy_cm_id (TYPE_2__*) ;
 int memset (struct ib_cm_event*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (TYPE_2__*,struct ib_cm_event*) ;

__attribute__((used)) static void cm_process_send_error(struct ib_mad_send_buf *msg,
      enum ib_wc_status wc_status)
{
 struct cm_id_private *cm_id_priv;
 struct ib_cm_event cm_event;
 enum ib_cm_state state;
 int ret;

 memset(&cm_event, 0, sizeof cm_event);
 cm_id_priv = msg->context[0];


 spin_lock_irq(&cm_id_priv->lock);
 state = (enum ib_cm_state) (unsigned long) msg->context[1];
 if (msg != cm_id_priv->msg || state != cm_id_priv->id.state)
  goto discard;

 switch (state) {
 case 129:
 case 131:
  cm_reset_to_idle(cm_id_priv);
  cm_event.event = IB_CM_REQ_ERROR;
  break;
 case 130:
 case 132:
  cm_reset_to_idle(cm_id_priv);
  cm_event.event = IB_CM_REP_ERROR;
  break;
 case 133:
  cm_enter_timewait(cm_id_priv);
  cm_event.event = IB_CM_DREQ_ERROR;
  break;
 case 128:
  cm_id_priv->id.state = IB_CM_IDLE;
  cm_event.event = IB_CM_SIDR_REQ_ERROR;
  break;
 default:
  goto discard;
 }
 spin_unlock_irq(&cm_id_priv->lock);
 cm_event.param.send_status = wc_status;


 ret = cm_id_priv->id.cm_handler(&cm_id_priv->id, &cm_event);
 cm_free_msg(msg);
 if (ret)
  ib_destroy_cm_id(&cm_id_priv->id);
 return;
discard:
 spin_unlock_irq(&cm_id_priv->lock);
 cm_free_msg(msg);
}
