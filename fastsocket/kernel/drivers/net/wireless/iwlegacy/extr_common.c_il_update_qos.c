
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct il_qosparam_cmd {int dummy; } ;
struct TYPE_6__ {int qos_flags; } ;
struct TYPE_5__ {TYPE_3__ def_qos_parm; scalar_t__ qos_active; } ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct il_priv {TYPE_2__ qos_data; TYPE_1__ ht; int status; } ;


 int C_QOS_PARAM ;
 int D_QOS (char*,scalar_t__,int ) ;
 int QOS_PARAM_FLG_TGN_MSK ;
 int QOS_PARAM_FLG_UPDATE_EDCA_MSK ;
 int S_EXIT_PENDING ;
 int il_send_cmd_pdu_async (struct il_priv*,int ,int,TYPE_3__*,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
il_update_qos(struct il_priv *il)
{
 if (test_bit(S_EXIT_PENDING, &il->status))
  return;

 il->qos_data.def_qos_parm.qos_flags = 0;

 if (il->qos_data.qos_active)
  il->qos_data.def_qos_parm.qos_flags |=
      QOS_PARAM_FLG_UPDATE_EDCA_MSK;

 if (il->ht.enabled)
  il->qos_data.def_qos_parm.qos_flags |= QOS_PARAM_FLG_TGN_MSK;

 D_QOS("send QoS cmd with Qos active=%d FLAGS=0x%X\n",
       il->qos_data.qos_active, il->qos_data.def_qos_parm.qos_flags);

 il_send_cmd_pdu_async(il, C_QOS_PARAM, sizeof(struct il_qosparam_cmd),
         &il->qos_data.def_qos_parm, ((void*)0));
}
