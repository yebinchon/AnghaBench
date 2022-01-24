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
struct pasemi_mac_txring {int /*<<< orphan*/  clean_timer; struct pasemi_mac* mac; } ;
struct pasemi_mac {int dummy; } ;

/* Variables and functions */
 scalar_t__ TX_CLEAN_INTERVAL ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pasemi_mac_txring*) ; 
 int /*<<< orphan*/  FUNC2 (struct pasemi_mac*) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct pasemi_mac_txring *txring = (struct pasemi_mac_txring *)data;
	struct pasemi_mac *mac = txring->mac;

	FUNC1(txring);

	FUNC0(&txring->clean_timer, jiffies + TX_CLEAN_INTERVAL);

	FUNC2(mac);
}