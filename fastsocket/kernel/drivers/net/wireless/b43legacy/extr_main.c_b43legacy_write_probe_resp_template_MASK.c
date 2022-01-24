#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct ieee80211_rate {int /*<<< orphan*/  hw_value; } ;
struct b43legacy_wldev {TYPE_2__* wl; } ;
struct b43legacy_plcp_hdr6 {int dummy; } ;
struct TYPE_4__ {TYPE_1__* current_beacon; } ;
struct TYPE_3__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/ * b43legacy_b_ratetable ; 
 int /*<<< orphan*/ * FUNC0 (struct b43legacy_wldev*,scalar_t__*,struct ieee80211_rate*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/  const*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (size_t,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct b43legacy_wldev *dev,
						u16 ram_offset,
						u16 shm_size_offset,
						struct ieee80211_rate *rate)
{
	const u8 *probe_resp_data;
	u16 size;

	size = dev->wl->current_beacon->len;
	probe_resp_data = FUNC0(dev, &size, rate);
	if (FUNC5(!probe_resp_data))
		return;

	/* Looks like PLCP headers plus packet timings are stored for
	 * all possible basic rates
	 */
	FUNC1(dev, 0x31A, size,
					&b43legacy_b_ratetable[0]);
	FUNC1(dev, 0x32C, size,
					&b43legacy_b_ratetable[1]);
	FUNC1(dev, 0x33E, size,
					&b43legacy_b_ratetable[2]);
	FUNC1(dev, 0x350, size,
					&b43legacy_b_ratetable[3]);

	size = FUNC4((size_t)size,
		   0x200 - sizeof(struct b43legacy_plcp_hdr6));
	FUNC2(dev, probe_resp_data,
					size, ram_offset,
					shm_size_offset, rate->hw_value);
	FUNC3(probe_resp_data);
}