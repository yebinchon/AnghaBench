#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  z ;
typedef  int /*<<< orphan*/  u16 ;
struct cycx_x25_cmd {int command; } ;
struct cycx_device {int in_isr; int /*<<< orphan*/  hw; scalar_t__ buff_int_mode_unbusy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  WAN_CONNECTED ; 
 int /*<<< orphan*/  WAN_DISCONNECTED ; 
#define  X25_ACK_FROM_VC 137 
#define  X25_CONNECT_CONFIRM 136 
#define  X25_CONNECT_INDICATION 135 
#define  X25_DATA_INDICATION 134 
#define  X25_DISCONNECT_CONFIRM 133 
#define  X25_DISCONNECT_INDICATION 132 
#define  X25_LINE_OFF 131 
#define  X25_LINE_ON 130 
#define  X25_LOG 129 
 int /*<<< orphan*/  X25_RXMBOX_OFFS ; 
#define  X25_STATISTIC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cycx_x25_cmd*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cycx_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cycx_device*,struct cycx_x25_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct cycx_device*,struct cycx_x25_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct cycx_device*,struct cycx_x25_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct cycx_device*,struct cycx_x25_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (struct cycx_device*,struct cycx_x25_cmd*) ; 
 int /*<<< orphan*/  FUNC8 (struct cycx_device*,struct cycx_x25_cmd*) ; 
 int /*<<< orphan*/  FUNC9 (struct cycx_device*,struct cycx_x25_cmd*) ; 
 int /*<<< orphan*/  FUNC10 (struct cycx_device*,struct cycx_x25_cmd*) ; 
 int /*<<< orphan*/  FUNC11 (struct cycx_device*,struct cycx_x25_cmd*) ; 

__attribute__((used)) static void FUNC12(struct cycx_device *card)
{
	struct cycx_x25_cmd cmd;
	u16 z = 0;

	card->in_isr = 1;
	card->buff_int_mode_unbusy = 0;
	FUNC0(&card->hw, X25_RXMBOX_OFFS, &cmd, sizeof(cmd));

	switch (cmd.command) {
	case X25_DATA_INDICATION:
		FUNC8(card, &cmd);
		break;
	case X25_ACK_FROM_VC:
		FUNC11(card, &cmd);
		break;
	case X25_LOG:
		FUNC7(card, &cmd);
		break;
	case X25_STATISTIC:
		FUNC10(card, &cmd);
		break;
	case X25_CONNECT_CONFIRM:
		FUNC4(card, &cmd);
		break;
	case X25_CONNECT_INDICATION:
		FUNC3(card, &cmd);
		break;
	case X25_DISCONNECT_INDICATION:
		FUNC5(card, &cmd);
		break;
	case X25_DISCONNECT_CONFIRM:
		FUNC6(card, &cmd);
		break;
	case X25_LINE_ON:
		FUNC2(card, WAN_CONNECTED);
		break;
	case X25_LINE_OFF:
		FUNC2(card, WAN_DISCONNECTED);
		break;
	default:
		FUNC9(card, &cmd);
		break;
	}

	FUNC1(&card->hw, 0, &z, sizeof(z));
	FUNC1(&card->hw, X25_RXMBOX_OFFS, &z, sizeof(z));
	card->in_isr = 0;
}