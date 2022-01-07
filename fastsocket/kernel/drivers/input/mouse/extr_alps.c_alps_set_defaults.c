
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alps_data {int byte0; int mask0; int x_max; int y_max; int proto_version; int flags; void* addr_command; void* nibble_commands; void* set_abs_params; int decode_fields; void* process_packet; int hw_init; } ;


 int ALPS_DUALPOINT ;





 void* PSMOUSE_CMD_DISABLE ;
 void* PSMOUSE_CMD_RESET_WRAP ;
 int alps_decode_dolphin ;
 int alps_decode_pinnacle ;
 int alps_hw_init_dolphin_v1 ;
 int alps_hw_init_v1_v2 ;
 int alps_hw_init_v3 ;
 int alps_hw_init_v4 ;
 void* alps_process_packet_v1_v2 ;
 void* alps_process_packet_v3 ;
 void* alps_process_packet_v4 ;
 void* alps_set_abs_params_mt ;
 void* alps_set_abs_params_st ;
 void* alps_v3_nibble_commands ;
 void* alps_v4_nibble_commands ;

__attribute__((used)) static void alps_set_defaults(struct alps_data *priv)
{
 priv->byte0 = 0x8f;
 priv->mask0 = 0x8f;
 priv->flags = ALPS_DUALPOINT;

 priv->x_max = 2000;
 priv->y_max = 1400;

 switch (priv->proto_version) {
 case 132:
 case 131:
  priv->hw_init = alps_hw_init_v1_v2;
  priv->process_packet = alps_process_packet_v1_v2;
  priv->set_abs_params = alps_set_abs_params_st;
  break;
 case 130:
  priv->hw_init = alps_hw_init_v3;
  priv->process_packet = alps_process_packet_v3;
  priv->set_abs_params = alps_set_abs_params_mt;
  priv->decode_fields = alps_decode_pinnacle;
  priv->nibble_commands = alps_v3_nibble_commands;
  priv->addr_command = PSMOUSE_CMD_RESET_WRAP;
  break;
 case 129:
  priv->hw_init = alps_hw_init_v4;
  priv->process_packet = alps_process_packet_v4;
  priv->set_abs_params = alps_set_abs_params_mt;
  priv->nibble_commands = alps_v4_nibble_commands;
  priv->addr_command = PSMOUSE_CMD_DISABLE;
  break;
 case 128:
  priv->hw_init = alps_hw_init_dolphin_v1;
  priv->process_packet = alps_process_packet_v3;
  priv->decode_fields = alps_decode_dolphin;
  priv->set_abs_params = alps_set_abs_params_mt;
  priv->nibble_commands = alps_v3_nibble_commands;
  priv->addr_command = PSMOUSE_CMD_RESET_WRAP;
  priv->byte0 = 0xc8;
  priv->mask0 = 0xc8;
  priv->flags = 0;
  priv->x_max = 1360;
  priv->y_max = 660;
  break;
 }
}
