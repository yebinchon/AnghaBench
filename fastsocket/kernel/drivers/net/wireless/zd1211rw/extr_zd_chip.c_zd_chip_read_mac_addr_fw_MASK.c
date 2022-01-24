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
struct zd_chip {int /*<<< orphan*/  usb; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2P_MAC_ADDR_P1 ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct zd_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(struct zd_chip *chip, u8 *addr)
{
	FUNC0(FUNC1(chip), "\n");
	return FUNC2(&chip->usb, E2P_MAC_ADDR_P1, addr,
		ETH_ALEN);
}