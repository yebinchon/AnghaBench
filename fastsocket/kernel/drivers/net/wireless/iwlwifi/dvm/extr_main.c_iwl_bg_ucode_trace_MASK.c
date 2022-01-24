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
struct TYPE_2__ {scalar_t__ ucode_trace; } ;
struct iwl_priv {int /*<<< orphan*/  ucode_trace; TYPE_1__ event_log; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_EXIT_PENDING ; 
 int /*<<< orphan*/  UCODE_TRACE_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct iwl_priv *priv = (struct iwl_priv *)data;

	if (FUNC3(STATUS_EXIT_PENDING, &priv->status))
		return;

	if (priv->event_log.ucode_trace) {
		FUNC0(priv);
		/* Reschedule the timer to occur in UCODE_TRACE_PERIOD */
		FUNC1(&priv->ucode_trace,
			 jiffies + FUNC2(UCODE_TRACE_PERIOD));
	}
}