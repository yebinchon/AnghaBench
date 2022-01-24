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
typedef  int /*<<< orphan*/  u8 ;
struct il_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_MAC_ADDRESS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/ * FUNC0 (struct il_priv const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

void
FUNC2(const struct il_priv *il, u8 * mac)
{
	const u8 *addr = FUNC0(il,
					      EEPROM_MAC_ADDRESS);
	FUNC1(mac, addr, ETH_ALEN);
}