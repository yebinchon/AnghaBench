#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  intf; } ;
struct TYPE_9__ {TYPE_2__ usb; int /*<<< orphan*/  mutex; } ;
struct TYPE_7__ {struct sk_buff* cur_beacon; } ;
struct zd_mac {TYPE_3__ chip; TYPE_1__ beacon; } ;
struct zd_ioreq32 {int value; void* addr; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* CR_BCN_FIFO ; 
 int /*<<< orphan*/  CR_BCN_FIFO_SEMAPHORE ; 
 void* CR_BCN_LENGTH ; 
 int /*<<< orphan*/  CR_BCN_PLCP_CFG ; 
 int EBUSY ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct zd_ioreq32*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct zd_ioreq32* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_3__*) ; 
 struct zd_mac* FUNC12 (struct ieee80211_hw*) ; 
 int FUNC13 (TYPE_3__*,int*,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_3__*,struct zd_ioreq32*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct zd_mac*) ; 
 int /*<<< orphan*/  FUNC17 (struct zd_mac*) ; 
 scalar_t__ FUNC18 (struct zd_mac*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC19(struct ieee80211_hw *hw, struct sk_buff *beacon,
				bool in_intr)
{
	struct zd_mac *mac = FUNC12(hw);
	int r, ret, num_cmds, req_pos = 0;
	u32 tmp, j = 0;
	/* 4 more bytes for tail CRC */
	u32 full_len = beacon->len + 4;
	unsigned long end_jiffies, message_jiffies;
	struct zd_ioreq32 *ioreqs;

	FUNC7(&mac->chip.mutex);

	/* Check if hw already has this beacon. */
	if (FUNC18(mac, beacon)) {
		r = 0;
		goto out_nofree;
	}

	/* Alloc memory for full beacon write at once. */
	num_cmds = 1 + FUNC11(&mac->chip) + full_len;
	ioreqs = FUNC5(num_cmds * sizeof(struct zd_ioreq32), GFP_KERNEL);
	if (!ioreqs) {
		r = -ENOMEM;
		goto out_nofree;
	}

	r = FUNC14(&mac->chip, 0, CR_BCN_FIFO_SEMAPHORE);
	if (r < 0)
		goto out;
	r = FUNC13(&mac->chip, &tmp, CR_BCN_FIFO_SEMAPHORE);
	if (r < 0)
		goto release_sema;
	if (in_intr && tmp & 0x2) {
		r = -EBUSY;
		goto release_sema;
	}

	end_jiffies = jiffies + HZ / 2; /*~500ms*/
	message_jiffies = jiffies + HZ / 10; /*~100ms*/
	while (tmp & 0x2) {
		r = FUNC13(&mac->chip, &tmp, CR_BCN_FIFO_SEMAPHORE);
		if (r < 0)
			goto release_sema;
		if (FUNC9(message_jiffies)) {
			message_jiffies = jiffies + HZ / 10;
			FUNC1(FUNC16(mac),
					"CR_BCN_FIFO_SEMAPHORE not ready\n");
			if (FUNC9(end_jiffies))  {
				FUNC1(FUNC16(mac),
						"Giving up beacon config.\n");
				r = -ETIMEDOUT;
				goto reset_device;
			}
		}
		FUNC6(20);
	}

	ioreqs[req_pos].addr = CR_BCN_FIFO;
	ioreqs[req_pos].value = full_len - 1;
	req_pos++;
	if (FUNC11(&mac->chip)) {
		ioreqs[req_pos].addr = CR_BCN_LENGTH;
		ioreqs[req_pos].value = full_len - 1;
		req_pos++;
	}

	for (j = 0 ; j < beacon->len; j++) {
		ioreqs[req_pos].addr = CR_BCN_FIFO;
		ioreqs[req_pos].value = *((u8 *)(beacon->data + j));
		req_pos++;
	}

	for (j = 0; j < 4; j++) {
		ioreqs[req_pos].addr = CR_BCN_FIFO;
		ioreqs[req_pos].value = 0x0;
		req_pos++;
	}

	FUNC0(req_pos != num_cmds);

	r = FUNC15(&mac->chip, ioreqs, num_cmds);

release_sema:
	/*
	 * Try very hard to release device beacon semaphore, as otherwise
	 * device/driver can be left in unusable state.
	 */
	end_jiffies = jiffies + HZ / 2; /*~500ms*/
	ret = FUNC14(&mac->chip, 1, CR_BCN_FIFO_SEMAPHORE);
	while (ret < 0) {
		if (in_intr || FUNC9(end_jiffies)) {
			ret = -ETIMEDOUT;
			break;
		}

		FUNC6(20);
		ret = FUNC14(&mac->chip, 1, CR_BCN_FIFO_SEMAPHORE);
	}

	if (ret < 0)
		FUNC1(FUNC16(mac), "Could not release "
					 "CR_BCN_FIFO_SEMAPHORE!\n");
	if (r < 0 || ret < 0) {
		if (r >= 0)
			r = ret;

		/* We don't know if beacon was written successfully or not,
		 * so clear current. */
		FUNC17(mac);

		goto out;
	}

	/* Beacon has now been written successfully, update current. */
	FUNC17(mac);
	mac->beacon.cur_beacon = beacon;
	beacon = NULL;

	/* 802.11b/g 2.4G CCK 1Mb
	 * 802.11a, not yet implemented, uses different values (see GPL vendor
	 * driver)
	 */
	r = FUNC14(&mac->chip, 0x00000400 | (full_len << 19),
				CR_BCN_PLCP_CFG);
out:
	FUNC3(ioreqs);
out_nofree:
	FUNC4(beacon);
	FUNC8(&mac->chip.mutex);

	return r;

reset_device:
	FUNC17(mac);
	FUNC4(beacon);

	FUNC8(&mac->chip.mutex);
	FUNC3(ioreqs);

	/* semaphore stuck, reset device to avoid fw freeze later */
	FUNC2(FUNC16(mac), "CR_BCN_FIFO_SEMAPHORE stuck, "
				  "reseting device...");
	FUNC10(mac->chip.usb.intf);

	return r;
}