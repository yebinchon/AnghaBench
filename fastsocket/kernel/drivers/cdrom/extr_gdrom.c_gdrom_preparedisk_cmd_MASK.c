#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct packet_command {int* cmd; scalar_t__ buflen; } ;
struct TYPE_2__ {int pending; int status; int /*<<< orphan*/  cd_info; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GDROM_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  command_queue ; 
 TYPE_1__ gd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct packet_command*) ; 
 int /*<<< orphan*/  FUNC2 (struct packet_command*) ; 
 struct packet_command* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
	struct packet_command *spin_command;
	spin_command = FUNC3(sizeof(struct packet_command), GFP_KERNEL);
	if (!spin_command)
		return -ENOMEM;
	spin_command->cmd[0] = 0x70;
	spin_command->cmd[2] = 0x1f;
	spin_command->buflen = 0;
	gd.pending = 1;
	FUNC1(gd.cd_info, spin_command);
	/* 60 second timeout */
	FUNC4(command_queue, gd.pending == 0,
		GDROM_DEFAULT_TIMEOUT);
	gd.pending = 0;
	FUNC2(spin_command);
	if (gd.status & 0x01) {
		/* log an error */
		FUNC0(NULL);
		return -EIO;
	}
	return 0;
}