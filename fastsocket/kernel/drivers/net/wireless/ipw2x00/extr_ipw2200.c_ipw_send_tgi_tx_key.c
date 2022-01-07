
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipw_tgi_tx_key {int key_id; int security_type; void** tx_counter; scalar_t__ flags; scalar_t__ station_index; int key; } ;
struct ipw_priv {TYPE_2__* ieee; } ;
typedef int key ;
struct TYPE_3__ {int flags; int * keys; } ;
struct TYPE_4__ {TYPE_1__ sec; } ;


 int IPW_CMD_TGI_TX_KEY ;
 int SCM_TEMPORAL_KEY_LENGTH ;
 void* cpu_to_le32 (int ) ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int,struct ipw_tgi_tx_key*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void ipw_send_tgi_tx_key(struct ipw_priv *priv, int type, int index)
{
 struct ipw_tgi_tx_key key;

 if (!(priv->ieee->sec.flags & (1 << index)))
  return;

 key.key_id = index;
 memcpy(key.key, priv->ieee->sec.keys[index], SCM_TEMPORAL_KEY_LENGTH);
 key.security_type = type;
 key.station_index = 0;
 key.flags = 0;

 key.tx_counter[0] = cpu_to_le32(0);
 key.tx_counter[1] = cpu_to_le32(0);

 ipw_send_cmd_pdu(priv, IPW_CMD_TGI_TX_KEY, sizeof(key), &key);
}
