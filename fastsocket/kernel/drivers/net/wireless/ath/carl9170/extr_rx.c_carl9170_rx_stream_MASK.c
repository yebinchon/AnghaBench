#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ar9170_stream {scalar_t__ tag; int /*<<< orphan*/ * payload; int /*<<< orphan*/  length; } ;
struct ar9170 {unsigned int rx_failover_missing; TYPE_2__* rx_failover; TYPE_1__* hw; } ;
struct TYPE_6__ {void* data; unsigned int len; } ;
struct TYPE_5__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  AR9170_RX_STREAM_TAG ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC11(struct ar9170 *ar, void *buf, unsigned int len)
{
	unsigned int tlen, wlen = 0, clen = 0;
	struct ar9170_stream *rx_stream;
	u8 *tbuf;

	tbuf = buf;
	tlen = len;

	while (tlen >= 4) {
		rx_stream = (void *) tbuf;
		clen = FUNC3(rx_stream->length);
		wlen = FUNC0(clen, 4);

		/* check if this is stream has a valid tag.*/
		if (rx_stream->tag != FUNC2(AR9170_RX_STREAM_TAG)) {
			/*
			 * TODO: handle the highly unlikely event that the
			 * corrupted stream has the TAG at the right position.
			 */

			/* check if the frame can be repaired. */
			if (!ar->rx_failover_missing) {

				/* this is not "short read". */
				if (FUNC5()) {
					FUNC10(ar->hw->wiphy,
						"missing tag!\n");
				}

				FUNC1(ar, tbuf, tlen);
				return;
			}

			if (ar->rx_failover_missing > tlen) {
				if (FUNC5()) {
					FUNC10(ar->hw->wiphy,
						"possible multi "
						"stream corruption!\n");
					goto err_telluser;
				} else {
					goto err_silent;
				}
			}

			FUNC4(FUNC7(ar->rx_failover, tlen), tbuf, tlen);
			ar->rx_failover_missing -= tlen;

			if (ar->rx_failover_missing <= 0) {
				/*
				 * nested carl9170_rx_stream call!
				 *
				 * termination is guaranteed, even when the
				 * combined frame also have an element with
				 * a bad tag.
				 */

				ar->rx_failover_missing = 0;
				FUNC11(ar, ar->rx_failover->data,
						   ar->rx_failover->len);

				FUNC8(ar->rx_failover);
				FUNC9(ar->rx_failover, 0);
			}

			return;
		}

		/* check if stream is clipped */
		if (wlen > tlen - 4) {
			if (ar->rx_failover_missing) {
				/* TODO: handle double stream corruption. */
				if (FUNC5()) {
					FUNC10(ar->hw->wiphy, "double rx "
						"stream corruption!\n");
					goto err_telluser;
				} else {
					goto err_silent;
				}
			}

			/*
			 * save incomplete data set.
			 * the firmware will resend the missing bits when
			 * the rx - descriptor comes round again.
			 */

			FUNC4(FUNC7(ar->rx_failover, tlen), tbuf, tlen);
			ar->rx_failover_missing = clen - tlen;
			return;
		}
		FUNC1(ar, rx_stream->payload, clen);

		tbuf += wlen + 4;
		tlen -= wlen + 4;
	}

	if (tlen) {
		if (FUNC5()) {
			FUNC10(ar->hw->wiphy, "%d bytes of unprocessed "
				"data left in rx stream!\n", tlen);
		}

		goto err_telluser;
	}

	return;

err_telluser:
	FUNC10(ar->hw->wiphy, "damaged RX stream data [want:%d, "
		"data:%d, rx:%d, pending:%d ]\n", clen, wlen, tlen,
		ar->rx_failover_missing);

	if (ar->rx_failover_missing)
		FUNC6("rxbuf:", DUMP_PREFIX_OFFSET,
				     ar->rx_failover->data,
				     ar->rx_failover->len);

	FUNC6("stream:", DUMP_PREFIX_OFFSET,
			     buf, len);

	FUNC10(ar->hw->wiphy, "please check your hardware and cables, if "
		"you see this message frequently.\n");

err_silent:
	if (ar->rx_failover_missing) {
		FUNC8(ar->rx_failover);
		FUNC9(ar->rx_failover, 0);
		ar->rx_failover_missing = 0;
	}
}