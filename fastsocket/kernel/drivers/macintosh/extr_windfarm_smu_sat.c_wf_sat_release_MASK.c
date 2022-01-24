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
struct wf_sensor {int dummy; } ;
struct wf_sat_sensor {size_t nr; int /*<<< orphan*/  refcnt; struct wf_sat_sensor* sat; } ;
struct wf_sat {size_t nr; int /*<<< orphan*/  refcnt; struct wf_sat* sat; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wf_sat_sensor*) ; 
 int /*<<< orphan*/ ** sats ; 
 struct wf_sat_sensor* FUNC2 (struct wf_sensor*) ; 

__attribute__((used)) static void FUNC3(struct wf_sensor *sr)
{
	struct wf_sat_sensor *sens = FUNC2(sr);
	struct wf_sat *sat = sens->sat;

	if (FUNC0(&sat->refcnt)) {
		if (sat->nr >= 0)
			sats[sat->nr] = NULL;
		FUNC1(sat);
	}
	FUNC1(sens);
}