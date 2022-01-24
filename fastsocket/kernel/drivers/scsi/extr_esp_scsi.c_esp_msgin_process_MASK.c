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
typedef  int u8 ;
struct esp_cmd_priv {int cur_residue; int /*<<< orphan*/  tot_residue; int /*<<< orphan*/  cur_sg; } ;
struct esp_cmd_entry {int message; int /*<<< orphan*/  cmd; } ;
struct esp {int* msg_in; int msg_in_len; int* msg_out; int msg_out_len; int /*<<< orphan*/  flags; struct esp_cmd_entry* active_cmd; } ;

/* Variables and functions */
#define  COMMAND_COMPLETE 135 
#define  DISCONNECT 134 
 struct esp_cmd_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_CMD_SATN ; 
 int /*<<< orphan*/  ESP_EVENT_FREE_BUS ; 
 int /*<<< orphan*/  ESP_FLAG_QUICKIRQ_CHECK ; 
#define  EXTENDED_MESSAGE 133 
#define  IGNORE_WIDE_RESIDUE 132 
#define  MESSAGE_REJECT 131 
#define  NOP 130 
#define  RESTORE_POINTERS 129 
#define  SAVE_POINTERS 128 
 int /*<<< orphan*/  FUNC1 (struct esp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct esp*) ; 
 int /*<<< orphan*/  FUNC3 (struct esp*) ; 
 int /*<<< orphan*/  FUNC4 (struct esp*,struct esp_cmd_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct esp*,struct esp_cmd_entry*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct esp*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct esp *esp)
{
	u8 msg0 = esp->msg_in[0];
	int len = esp->msg_in_len;

	if (msg0 & 0x80) {
		/* Identify */
		FUNC6("ESP: Unexpected msgin identify\n");
		return 0;
	}

	switch (msg0) {
	case EXTENDED_MESSAGE:
		if (len == 1)
			return 1;
		if (len < esp->msg_in[1] + 2)
			return 1;
		FUNC2(esp);
		return 0;

	case IGNORE_WIDE_RESIDUE: {
		struct esp_cmd_entry *ent;
		struct esp_cmd_priv *spriv;
		if (len == 1)
			return 1;

		if (esp->msg_in[1] != 1)
			goto do_reject;

		ent = esp->active_cmd;
		spriv = FUNC0(ent->cmd);

		if (spriv->cur_residue == FUNC8(spriv->cur_sg)) {
			spriv->cur_sg--;
			spriv->cur_residue = 1;
		} else
			spriv->cur_residue++;
		spriv->tot_residue++;
		return 0;
	}
	case NOP:
		return 0;
	case RESTORE_POINTERS:
		FUNC4(esp, esp->active_cmd);
		return 0;
	case SAVE_POINTERS:
		FUNC5(esp, esp->active_cmd);
		return 0;

	case COMMAND_COMPLETE:
	case DISCONNECT: {
		struct esp_cmd_entry *ent = esp->active_cmd;

		ent->message = msg0;
		FUNC1(esp, ESP_EVENT_FREE_BUS);
		esp->flags |= ESP_FLAG_QUICKIRQ_CHECK;
		return 0;
	}
	case MESSAGE_REJECT:
		FUNC3(esp);
		return 0;

	default:
	do_reject:
		esp->msg_out[0] = MESSAGE_REJECT;
		esp->msg_out_len = 1;
		FUNC7(esp, ESP_CMD_SATN);
		return 0;
	}
}