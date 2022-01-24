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
struct typhoon_indexes {scalar_t__ respCleared; scalar_t__ respReady; } ;
struct basic_ring {scalar_t__ lastWrite; scalar_t__ ringBase; } ;
struct typhoon {int awaiting_resp; int /*<<< orphan*/  command_lock; scalar_t__ ioaddr; int /*<<< orphan*/  name; struct basic_ring cmdRing; struct typhoon_indexes* indexes; } ;
struct resp_desc {int flags; } ;
struct cmd_desc {int flags; } ;

/* Variables and functions */
 scalar_t__ COMMAND_RING_SIZE ; 
 int EIO ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int TYPHOON_CMD_RESPOND ; 
 scalar_t__ TYPHOON_REG_CMD_READY ; 
 scalar_t__ TYPHOON_REG_SELF_INTERRUPT ; 
 int TYPHOON_RESP_ERROR ; 
 int /*<<< orphan*/  TYPHOON_UDELAY ; 
 int TYPHOON_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct cmd_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int) ; 
 int FUNC7 (struct typhoon*) ; 
 int FUNC8 (struct typhoon*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (struct typhoon*,int,struct resp_desc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static int
FUNC14(struct typhoon *tp, int num_cmd, struct cmd_desc *cmd,
		      int num_resp, struct resp_desc *resp)
{
	struct typhoon_indexes *indexes = tp->indexes;
	struct basic_ring *ring = &tp->cmdRing;
	struct resp_desc local_resp;
	int i, err = 0;
	int got_resp;
	int freeCmd, freeResp;
	int len, wrap_len;

	FUNC4(&tp->command_lock);

	freeCmd = FUNC7(tp);
	freeResp = FUNC8(tp);

	if(freeCmd < num_cmd || freeResp < num_resp) {
		FUNC2("%s: no descs for cmd, had (needed) %d (%d) cmd, "
			"%d (%d) resp\n", tp->name, freeCmd, num_cmd,
			freeResp, num_resp);
		err = -ENOMEM;
		goto out;
	}

	if(cmd->flags & TYPHOON_CMD_RESPOND) {
		/* If we're expecting a response, but the caller hasn't given
		 * us a place to put it, we'll provide one.
		 */
		tp->awaiting_resp = 1;
		if(resp == NULL) {
			resp = &local_resp;
			num_resp = 1;
		}
	}

	wrap_len = 0;
	len = num_cmd * sizeof(*cmd);
	if(FUNC12(ring->lastWrite + len > COMMAND_RING_SIZE)) {
		wrap_len = ring->lastWrite + len - COMMAND_RING_SIZE;
		len = COMMAND_RING_SIZE - ring->lastWrite;
	}

	FUNC1(ring->ringBase + ring->lastWrite, cmd, len);
	if(FUNC12(wrap_len)) {
		struct cmd_desc *wrap_ptr = cmd;
		wrap_ptr += len / sizeof(*cmd);
		FUNC1(ring->ringBase, wrap_ptr, wrap_len);
	}

	FUNC6(&ring->lastWrite, num_cmd);

	/* "I feel a presence... another warrior is on the mesa."
	 */
	FUNC13();
	FUNC0(ring->lastWrite, tp->ioaddr + TYPHOON_REG_CMD_READY);
	FUNC9(tp->ioaddr);

	if((cmd->flags & TYPHOON_CMD_RESPOND) == 0)
		goto out;

	/* Ugh. We'll be here about 8ms, spinning our thumbs, unable to
	 * preempt or do anything other than take interrupts. So, don't
	 * wait for a response unless you have to.
	 *
	 * I've thought about trying to sleep here, but we're called
	 * from many contexts that don't allow that. Also, given the way
	 * 3Com has implemented irq coalescing, we would likely timeout --
	 * this has been observed in real life!
	 *
	 * The big killer is we have to wait to get stats from the card,
	 * though we could go to a periodic refresh of those if we don't
	 * mind them getting somewhat stale. The rest of the waiting
	 * commands occur during open/close/suspend/resume, so they aren't
	 * time critical. Creating SAs in the future will also have to
	 * wait here.
	 */
	got_resp = 0;
	for(i = 0; i < TYPHOON_WAIT_TIMEOUT && !got_resp; i++) {
		if(indexes->respCleared != indexes->respReady)
			got_resp = FUNC10(tp, num_resp,
								resp);
		FUNC11(TYPHOON_UDELAY);
	}

	if(!got_resp) {
		err = -ETIMEDOUT;
		goto out;
	}

	/* Collect the error response even if we don't care about the
	 * rest of the response
	 */
	if(resp->flags & TYPHOON_RESP_ERROR)
		err = -EIO;

out:
	if(tp->awaiting_resp) {
		tp->awaiting_resp = 0;
		FUNC3();

		/* Ugh. If a response was added to the ring between
		 * the call to typhoon_process_response() and the clearing
		 * of tp->awaiting_resp, we could have missed the interrupt
		 * and it could hang in the ring an indeterminate amount of
		 * time. So, check for it, and interrupt ourselves if this
		 * is the case.
		 */
		if(indexes->respCleared != indexes->respReady)
			FUNC0(1, tp->ioaddr + TYPHOON_REG_SELF_INTERRUPT);
	}

	FUNC5(&tp->command_lock);
	return err;
}