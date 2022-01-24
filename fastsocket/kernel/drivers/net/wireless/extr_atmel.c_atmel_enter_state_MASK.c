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
struct atmel_private {int station_state; scalar_t__ last_beacon_timestamp; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int STATION_STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct atmel_private *priv, int new_state)
{
	int old_state = priv->station_state;

	if (new_state == old_state)
		return;

	priv->station_state = new_state;

	if (new_state == STATION_STATE_READY) {
		FUNC3(priv->dev);
		FUNC1(priv->dev);
	}

	if (old_state == STATION_STATE_READY) {
		FUNC0(priv->dev);
		if (FUNC2(priv->dev))
			FUNC4(priv->dev);
		priv->last_beacon_timestamp = 0;
	}
}