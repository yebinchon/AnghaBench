
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z ;
typedef int u16 ;
struct cycx_x25_cmd {int command; } ;
struct cycx_device {int in_isr; int hw; scalar_t__ buff_int_mode_unbusy; } ;
typedef int cmd ;


 int WAN_CONNECTED ;
 int WAN_DISCONNECTED ;
 int X25_RXMBOX_OFFS ;

 int cycx_peek (int *,int ,struct cycx_x25_cmd*,int) ;
 int cycx_poke (int *,int ,int *,int) ;
 int cycx_set_state (struct cycx_device*,int ) ;
 int cycx_x25_irq_connect (struct cycx_device*,struct cycx_x25_cmd*) ;
 int cycx_x25_irq_connect_confirm (struct cycx_device*,struct cycx_x25_cmd*) ;
 int cycx_x25_irq_disconnect (struct cycx_device*,struct cycx_x25_cmd*) ;
 int cycx_x25_irq_disconnect_confirm (struct cycx_device*,struct cycx_x25_cmd*) ;
 int cycx_x25_irq_log (struct cycx_device*,struct cycx_x25_cmd*) ;
 int cycx_x25_irq_rx (struct cycx_device*,struct cycx_x25_cmd*) ;
 int cycx_x25_irq_spurious (struct cycx_device*,struct cycx_x25_cmd*) ;
 int cycx_x25_irq_stat (struct cycx_device*,struct cycx_x25_cmd*) ;
 int cycx_x25_irq_tx (struct cycx_device*,struct cycx_x25_cmd*) ;

__attribute__((used)) static void cycx_x25_irq_handler(struct cycx_device *card)
{
 struct cycx_x25_cmd cmd;
 u16 z = 0;

 card->in_isr = 1;
 card->buff_int_mode_unbusy = 0;
 cycx_peek(&card->hw, X25_RXMBOX_OFFS, &cmd, sizeof(cmd));

 switch (cmd.command) {
 case 134:
  cycx_x25_irq_rx(card, &cmd);
  break;
 case 137:
  cycx_x25_irq_tx(card, &cmd);
  break;
 case 129:
  cycx_x25_irq_log(card, &cmd);
  break;
 case 128:
  cycx_x25_irq_stat(card, &cmd);
  break;
 case 136:
  cycx_x25_irq_connect_confirm(card, &cmd);
  break;
 case 135:
  cycx_x25_irq_connect(card, &cmd);
  break;
 case 132:
  cycx_x25_irq_disconnect(card, &cmd);
  break;
 case 133:
  cycx_x25_irq_disconnect_confirm(card, &cmd);
  break;
 case 130:
  cycx_set_state(card, WAN_CONNECTED);
  break;
 case 131:
  cycx_set_state(card, WAN_DISCONNECTED);
  break;
 default:
  cycx_x25_irq_spurious(card, &cmd);
  break;
 }

 cycx_poke(&card->hw, 0, &z, sizeof(z));
 cycx_poke(&card->hw, X25_RXMBOX_OFFS, &z, sizeof(z));
 card->in_isr = 0;
}
