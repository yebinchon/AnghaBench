
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int remote_id; int local_id; } ;
struct cm_id_private {int remote_qpn; TYPE_1__ id; } ;
struct cm_dreq_msg {int private_data; int remote_comm_id; int local_comm_id; int hdr; } ;


 int CM_DREQ_ATTR_ID ;
 int CM_MSG_SEQUENCE_DREQ ;
 int cm_dreq_set_remote_qpn (struct cm_dreq_msg*,int ) ;
 int cm_form_tid (struct cm_id_private*,int ) ;
 int cm_format_mad_hdr (int *,int ,int ) ;
 int memcpy (int ,void const*,scalar_t__) ;

__attribute__((used)) static void cm_format_dreq(struct cm_dreq_msg *dreq_msg,
     struct cm_id_private *cm_id_priv,
     const void *private_data,
     u8 private_data_len)
{
 cm_format_mad_hdr(&dreq_msg->hdr, CM_DREQ_ATTR_ID,
     cm_form_tid(cm_id_priv, CM_MSG_SEQUENCE_DREQ));
 dreq_msg->local_comm_id = cm_id_priv->id.local_id;
 dreq_msg->remote_comm_id = cm_id_priv->id.remote_id;
 cm_dreq_set_remote_qpn(dreq_msg, cm_id_priv->remote_qpn);

 if (private_data && private_data_len)
  memcpy(dreq_msg->private_data, private_data, private_data_len);
}
