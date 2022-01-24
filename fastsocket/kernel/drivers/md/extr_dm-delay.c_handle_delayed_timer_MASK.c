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
struct delay_c {int /*<<< orphan*/  flush_expired_bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  kdelayd_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(unsigned long data)
{
	struct delay_c *dc = (struct delay_c *)data;

	FUNC0(kdelayd_wq, &dc->flush_expired_bios);
}