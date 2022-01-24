#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct tty_struct {int dummy; } ;
struct TYPE_5__ {int tail; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int EMUDIF ; 
 int EMUDOF ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * bfin_jc_tty ; 
 int /*<<< orphan*/  bfin_jc_tty_mutex ; 
 TYPE_1__ bfin_jc_write_buf ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC15 (struct tty_struct*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (struct tty_struct*) ; 

__attribute__((used)) static int
FUNC17(void *arg)
{
	uint32_t inbound_len = 0, outbound_len = 0;

	while (!FUNC8()) {
		/* no one left to give data to, so sleep */
		if (bfin_jc_tty == NULL && FUNC7(&bfin_jc_write_buf)) {
			FUNC11("waiting for readers\n");
			FUNC0(TASK_UNINTERRUPTIBLE);
			FUNC12();
			FUNC0(TASK_RUNNING);
		}

		/* no data available, so just chill */
		if (!(FUNC1() & EMUDIF) && FUNC7(&bfin_jc_write_buf)) {
			FUNC11("waiting for data (in_len = %i) (circ: %i %i)\n",
				inbound_len, bfin_jc_write_buf.tail, bfin_jc_write_buf.head);
			if (inbound_len)
				FUNC12();
			else
				FUNC13(HZ);
			continue;
		}

		/* if incoming data is ready, eat it */
		if (FUNC1() & EMUDIF) {
			struct tty_struct *tty;
			FUNC9(&bfin_jc_tty_mutex);
			tty = (struct tty_struct *)bfin_jc_tty;
			if (tty != NULL) {
				uint32_t emudat = FUNC2();
				if (inbound_len == 0) {
					FUNC11("incoming length: 0x%08x\n", emudat);
					inbound_len = emudat;
				} else {
					size_t num_chars = (4 <= inbound_len ? 4 : inbound_len);
					FUNC11("  incoming data: 0x%08x (pushing %zu)\n", emudat, num_chars);
					inbound_len -= num_chars;
					FUNC15(tty, (unsigned char *)&emudat, num_chars);
					FUNC14(tty);
				}
			}
			FUNC10(&bfin_jc_tty_mutex);
		}

		/* if outgoing data is ready, post it */
		if (!(FUNC1() & EMUDOF) && !FUNC7(&bfin_jc_write_buf)) {
			if (outbound_len == 0) {
				outbound_len = FUNC6(&bfin_jc_write_buf);
				FUNC3(outbound_len);
				FUNC11("outgoing length: 0x%08x\n", outbound_len);
			} else {
				struct tty_struct *tty;
				int tail = bfin_jc_write_buf.tail;
				size_t ate = (4 <= outbound_len ? 4 : outbound_len);
				uint32_t emudat =
				FUNC4(
					FUNC5(&bfin_jc_write_buf, tail + 0),
					FUNC5(&bfin_jc_write_buf, tail + 1),
					FUNC5(&bfin_jc_write_buf, tail + 2),
					FUNC5(&bfin_jc_write_buf, tail + 3)
				);
				bfin_jc_write_buf.tail += ate;
				outbound_len -= ate;
				FUNC9(&bfin_jc_tty_mutex);
				tty = (struct tty_struct *)bfin_jc_tty;
				if (tty)
					FUNC16(tty);
				FUNC10(&bfin_jc_tty_mutex);
				FUNC11("  outgoing data: 0x%08x (pushing %zu)\n", emudat, ate);
			}
		}
	}

	FUNC0(TASK_RUNNING);
	return 0;
}