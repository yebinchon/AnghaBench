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
struct gru_state {int /*<<< orphan*/  gs_dsr_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRU_DSR_AU ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 

unsigned long FUNC1(struct gru_state *gru, int dsr_au_count,
				       char *dsmap)
{
	return FUNC0(&gru->gs_dsr_map, dsr_au_count, GRU_DSR_AU,
				 dsmap);
}