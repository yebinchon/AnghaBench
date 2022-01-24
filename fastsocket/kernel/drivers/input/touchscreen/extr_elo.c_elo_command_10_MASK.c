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
struct elo {scalar_t__ expected_packet; int /*<<< orphan*/  cmd_mutex; int /*<<< orphan*/  response; int /*<<< orphan*/  cmd_done; int /*<<< orphan*/  serio; } ;

/* Variables and functions */
 int ELO10_LEAD_BYTE ; 
 int ELO10_PACKET_LEN ; 
 scalar_t__ ELO10_TOUCH_PACKET ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned char) ; 
 scalar_t__ FUNC7 (unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct elo *elo, unsigned char *packet)
{
	int rc = -1;
	int i;
	unsigned char csum = 0xaa + ELO10_LEAD_BYTE;

	FUNC2(&elo->cmd_mutex);

	FUNC5(elo->serio);
	elo->expected_packet = FUNC7(packet[0]);
	FUNC0(&elo->cmd_done);
	FUNC4(elo->serio);

	if (FUNC6(elo->serio, ELO10_LEAD_BYTE))
		goto out;

	for (i = 0; i < ELO10_PACKET_LEN; i++) {
		csum += packet[i];
		if (FUNC6(elo->serio, packet[i]))
			goto out;
	}

	if (FUNC6(elo->serio, csum))
		goto out;

	FUNC8(&elo->cmd_done, HZ);

	if (elo->expected_packet == ELO10_TOUCH_PACKET) {
		/* We are back in reporting mode, the command was ACKed */
		FUNC1(packet, elo->response, ELO10_PACKET_LEN);
		rc = 0;
	}

 out:
	FUNC3(&elo->cmd_mutex);
	return rc;
}