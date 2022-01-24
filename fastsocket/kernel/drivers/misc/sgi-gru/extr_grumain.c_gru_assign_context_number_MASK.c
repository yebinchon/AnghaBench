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
struct gru_state {int /*<<< orphan*/  gs_context_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRU_NUM_CCH ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gru_state *gru)
{
	int ctxnum;

	ctxnum = FUNC1(&gru->gs_context_map, GRU_NUM_CCH);
	FUNC0(ctxnum, &gru->gs_context_map);
	return ctxnum;
}