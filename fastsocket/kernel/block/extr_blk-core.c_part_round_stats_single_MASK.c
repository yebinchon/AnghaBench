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
struct hd_struct {unsigned long stamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct hd_struct*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  io_ticks ; 
 unsigned long FUNC1 (struct hd_struct*) ; 
 int /*<<< orphan*/  time_in_queue ; 

__attribute__((used)) static void FUNC2(int cpu, struct hd_struct *part,
				    unsigned long now)
{
	if (now == part->stamp)
		return;

	if (FUNC1(part)) {
		FUNC0(cpu, part, time_in_queue,
				FUNC1(part) * (now - part->stamp));
		FUNC0(cpu, part, io_ticks, (now - part->stamp));
	}
	part->stamp = now;
}