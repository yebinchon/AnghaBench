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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {unsigned int const vif_num; } ;
struct ar9170 {TYPE_1__ fw; } ;

/* Variables and functions */
 scalar_t__ AR9170_MAC_REG_ACK_TABLE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct ar9170*,scalar_t__,int /*<<< orphan*/  const*) ; 

int FUNC2(struct ar9170 *ar, const unsigned int id,
			     const u8 *mac)
{
	if (FUNC0(id >= ar->fw.vif_num))
		return -EINVAL;

	return FUNC1(ar,
		AR9170_MAC_REG_ACK_TABLE + (id - 1) * 8, mac);
}