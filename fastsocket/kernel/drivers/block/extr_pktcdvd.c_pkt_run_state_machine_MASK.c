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
struct pktcdvd_device {int dummy; } ;
struct packet_data {int state; TYPE_1__* w_bio; int /*<<< orphan*/  io_wait; int /*<<< orphan*/  io_errors; int /*<<< orphan*/  sleep_time; int /*<<< orphan*/  frames; int /*<<< orphan*/  write_size; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 () ; 
#define  PACKET_FINISHED_STATE 132 
#define  PACKET_READ_WAIT_STATE 131 
#define  PACKET_RECOVERY_STATE 130 
#define  PACKET_WAITING_STATE 129 
#define  PACKET_WRITE_WAIT_STATE 128 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct packet_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pktcdvd_device*,struct packet_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct packet_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct packet_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct pktcdvd_device*,struct packet_data*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct pktcdvd_device *pd, struct packet_data *pkt)
{
	int uptodate;

	FUNC1("run_state_machine: pkt %d\n", pkt->id);

	for (;;) {
		switch (pkt->state) {
		case PACKET_WAITING_STATE:
			if ((pkt->write_size < pkt->frames) && (pkt->sleep_time > 0))
				return;

			pkt->sleep_time = 0;
			FUNC4(pd, pkt);
			FUNC5(pkt, PACKET_READ_WAIT_STATE);
			break;

		case PACKET_READ_WAIT_STATE:
			if (FUNC2(&pkt->io_wait) > 0)
				return;

			if (FUNC2(&pkt->io_errors) > 0) {
				FUNC5(pkt, PACKET_RECOVERY_STATE);
			} else {
				FUNC7(pd, pkt);
			}
			break;

		case PACKET_WRITE_WAIT_STATE:
			if (FUNC2(&pkt->io_wait) > 0)
				return;

			if (FUNC8(BIO_UPTODATE, &pkt->w_bio->bi_flags)) {
				FUNC5(pkt, PACKET_FINISHED_STATE);
			} else {
				FUNC5(pkt, PACKET_RECOVERY_STATE);
			}
			break;

		case PACKET_RECOVERY_STATE:
			if (FUNC6(pkt)) {
				FUNC7(pd, pkt);
			} else {
				FUNC1("No recovery possible\n");
				FUNC5(pkt, PACKET_FINISHED_STATE);
			}
			break;

		case PACKET_FINISHED_STATE:
			uptodate = FUNC8(BIO_UPTODATE, &pkt->w_bio->bi_flags);
			FUNC3(pkt, uptodate);
			return;

		default:
			FUNC0();
			break;
		}
	}
}