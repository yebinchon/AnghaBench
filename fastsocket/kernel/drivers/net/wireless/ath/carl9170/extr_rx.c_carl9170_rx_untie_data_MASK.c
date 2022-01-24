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
typedef  int u8 ;
struct ieee80211_rx_status {int /*<<< orphan*/  flag; } ;
struct ar9170_rx_phystatus {int dummy; } ;
struct ar9170_rx_macstatus {int status; } ;
struct ar9170_rx_head {int dummy; } ;
struct ar9170 {int rx_has_plcp; int /*<<< orphan*/  rx_dropped; struct ar9170_rx_head rx_plcp; TYPE_1__* hw; int /*<<< orphan*/  ampdu_ref; } ;
typedef  int /*<<< orphan*/  status ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int AR9170_RX_STATUS_MPDU ; 
#define  AR9170_RX_STATUS_MPDU_FIRST 131 
#define  AR9170_RX_STATUS_MPDU_LAST 130 
#define  AR9170_RX_STATUS_MPDU_MIDDLE 129 
#define  AR9170_RX_STATUS_MPDU_SINGLE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETH_ALEN ; 
 int FCS_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*) ; 
 int /*<<< orphan*/  RX_FLAG_AMPDU_IS_LAST ; 
 int /*<<< orphan*/  RX_FLAG_NO_SIGNAL_VAL ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*,int*,int,struct ieee80211_rx_status*) ; 
 scalar_t__ FUNC3 (struct ar9170*,int*,int,struct ieee80211_rx_status*) ; 
 int FUNC4 (struct ar9170*,struct ar9170_rx_head*,struct ar9170_rx_macstatus*,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC5 (struct ar9170*,struct ar9170_rx_phystatus*,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ar9170_rx_head*,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_rx_status*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC12(struct ar9170 *ar, u8 *buf, int len)
{
	struct ar9170_rx_head *head;
	struct ar9170_rx_macstatus *mac;
	struct ar9170_rx_phystatus *phy = NULL;
	struct ieee80211_rx_status status;
	int mpdu_len;
	u8 mac_status;

	if (!FUNC1(ar))
		return;

	if (FUNC10(len < sizeof(*mac)))
		goto drop;

	FUNC8(&status, 0, sizeof(status));

	mpdu_len = len - sizeof(*mac);

	mac = (void *)(buf + mpdu_len);
	mac_status = mac->status;
	switch (mac_status & AR9170_RX_STATUS_MPDU) {
	case AR9170_RX_STATUS_MPDU_FIRST:
		ar->ampdu_ref++;
		/* Aggregated MPDUs start with an PLCP header */
		if (FUNC6(mpdu_len >= sizeof(struct ar9170_rx_head))) {
			head = (void *) buf;

			/*
			 * The PLCP header needs to be cached for the
			 * following MIDDLE + LAST A-MPDU packets.
			 *
			 * So, if you are wondering why all frames seem
			 * to share a common RX status information,
			 * then you have the answer right here...
			 */
			FUNC7(&ar->rx_plcp, (void *) buf,
			       sizeof(struct ar9170_rx_head));

			mpdu_len -= sizeof(struct ar9170_rx_head);
			buf += sizeof(struct ar9170_rx_head);

			ar->rx_has_plcp = true;
		} else {
			if (FUNC9()) {
				FUNC11(ar->hw->wiphy, "plcp info "
					"is clipped.\n");
			}

			goto drop;
		}
		break;

	case AR9170_RX_STATUS_MPDU_LAST:
		status.flag |= RX_FLAG_AMPDU_IS_LAST;

		/*
		 * The last frame of an A-MPDU has an extra tail
		 * which does contain the phy status of the whole
		 * aggregate.
		 */
		if (FUNC6(mpdu_len >= sizeof(struct ar9170_rx_phystatus))) {
			mpdu_len -= sizeof(struct ar9170_rx_phystatus);
			phy = (void *)(buf + mpdu_len);
		} else {
			if (FUNC9()) {
				FUNC11(ar->hw->wiphy, "frame tail "
					"is clipped.\n");
			}

			goto drop;
		}

	case AR9170_RX_STATUS_MPDU_MIDDLE:
		/*  These are just data + mac status */
		if (FUNC10(!ar->rx_has_plcp)) {
			if (!FUNC9())
				return;

			FUNC11(ar->hw->wiphy, "rx stream does not start "
					"with a first_mpdu frame tag.\n");

			goto drop;
		}

		head = &ar->rx_plcp;
		break;

	case AR9170_RX_STATUS_MPDU_SINGLE:
		/* single mpdu has both: plcp (head) and phy status (tail) */
		head = (void *) buf;

		mpdu_len -= sizeof(struct ar9170_rx_head);
		mpdu_len -= sizeof(struct ar9170_rx_phystatus);

		buf += sizeof(struct ar9170_rx_head);
		phy = (void *)(buf + mpdu_len);
		break;

	default:
		FUNC0(1);
		break;
	}

	/* FC + DU + RA + FCS */
	if (FUNC10(mpdu_len < (2 + 2 + ETH_ALEN + FCS_LEN)))
		goto drop;

	if (FUNC10(FUNC4(ar, head, mac, &status)))
		goto drop;

	if (!FUNC2(ar, buf, mac_status, &status))
		goto drop;

	if (phy)
		FUNC5(ar, phy, &status);
	else
		status.flag |= RX_FLAG_NO_SIGNAL_VAL;

	if (FUNC3(ar, buf, mpdu_len, &status))
		goto drop;

	return;
drop:
	ar->rx_dropped++;
}