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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 unsigned int NR_CPUS ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  cpu_online_map ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int event_scan_delay ; 
 int /*<<< orphan*/  event_scan_work ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ first_pass ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int rtas_event_scan_rate ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int surveillance_timeout ; 

__attribute__((used)) static void FUNC10(struct work_struct *w)
{
	unsigned int cpu;

	FUNC1();

	FUNC4();

	cpu = FUNC5(FUNC9(), cpu_online_map);
	if (cpu == NR_CPUS) {
		cpu = FUNC3(cpu_online_map);

		if (first_pass) {
			first_pass = 0;
			event_scan_delay = 30*HZ/rtas_event_scan_rate;

			if (surveillance_timeout != -1) {
				FUNC6("rtasd: enabling surveillance\n");
				FUNC2(surveillance_timeout);
				FUNC6("rtasd: surveillance enabled\n");
			}
		}
	}

	FUNC8(cpu, &event_scan_work,
		FUNC0(event_scan_delay, cpu));

	FUNC7();
}