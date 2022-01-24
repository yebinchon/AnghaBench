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
struct ar9170 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar9170*) ; 
 scalar_t__ FUNC1 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC3 (struct ar9170*) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct ar9170 *ar = (struct ar9170 *) data;

	if (!FUNC0(ar))
		return;

	FUNC3(ar);

	/*
	 * Strictly speaking: The tx scheduler is not part of the USB system.
	 * But the rx worker returns frames back to the mac80211-stack and
	 * this is the _perfect_ place to generate the next transmissions.
	 */
	if (FUNC1(ar))
		FUNC2(ar);
}