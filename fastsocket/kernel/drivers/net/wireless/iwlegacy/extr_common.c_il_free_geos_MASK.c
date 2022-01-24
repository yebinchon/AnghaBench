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
struct il_priv {int /*<<< orphan*/  status; int /*<<< orphan*/  ieee_rates; int /*<<< orphan*/  ieee_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_GEO_CONFIGURED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(struct il_priv *il)
{
	FUNC1(il->ieee_channels);
	FUNC1(il->ieee_rates);
	FUNC0(S_GEO_CONFIGURED, &il->status);
}