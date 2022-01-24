#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct iwl_priv {TYPE_1__* trans; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HBUS_TARG_MEM_RADDR ; 
 int /*<<< orphan*/  HBUS_TARG_MEM_RDAT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct iwl_priv *priv, u32 base,
					u32 start_idx, u32 num_events,
					u32 capacity, u32 mode)
{
	u32 i;
	u32 ptr;        /* SRAM byte address of log data */
	u32 ev, time, data; /* event log data */
	unsigned long reg_flags;

	if (mode == 0)
		ptr = base + (4 * sizeof(u32)) + (start_idx * 2 * sizeof(u32));
	else
		ptr = base + (4 * sizeof(u32)) + (start_idx * 3 * sizeof(u32));

	/* Make sure device is powered up for SRAM reads */
	if (!FUNC2(priv->trans, false, &reg_flags))
		return;

	/* Set starting address; reads will auto-increment */
	FUNC4(priv->trans, HBUS_TARG_MEM_RADDR, ptr);

	/*
	 * Refuse to read more than would have fit into the log from
	 * the current start_idx. This used to happen due to the race
	 * described below, but now WARN because the code below should
	 * prevent it from happening here.
	 */
	if (FUNC0(num_events > capacity - start_idx))
		num_events = capacity - start_idx;

	/*
	 * "time" is actually "data" for mode 0 (no timestamp).
	 * place event id # at far right for easier visual parsing.
	 */
	for (i = 0; i < num_events; i++) {
		ev = FUNC1(priv->trans, HBUS_TARG_MEM_RDAT);
		time = FUNC1(priv->trans, HBUS_TARG_MEM_RDAT);
		if (mode == 0) {
			FUNC5(
					priv->trans->dev, 0, time, ev);
		} else {
			data = FUNC1(priv->trans, HBUS_TARG_MEM_RDAT);
			FUNC5(
					priv->trans->dev, time, data, ev);
		}
	}
	/* Allow device to power down */
	FUNC3(priv->trans, &reg_flags);
}