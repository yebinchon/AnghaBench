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
typedef  int /*<<< orphan*/  wcid_entry ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;
struct mac_wcid_entry {int /*<<< orphan*/  mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_wcid_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,struct mac_wcid_entry*,int) ; 

__attribute__((used)) static void FUNC4(struct rt2x00_dev *rt2x00dev,
			       const u8 *address,
			       int wcid)
{
	struct mac_wcid_entry wcid_entry;
	u32 offset;

	offset = FUNC0(wcid);

	FUNC2(&wcid_entry, 0xff, sizeof(wcid_entry));
	if (address)
		FUNC1(wcid_entry.mac, address, ETH_ALEN);

	FUNC3(rt2x00dev, offset,
				      &wcid_entry, sizeof(wcid_entry));
}