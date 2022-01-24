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
struct etr_aib {int dummy; } ;
struct clock_sync_data {int etr_port; int /*<<< orphan*/  cpus; struct etr_aib* etr_aib; } ;
typedef  int /*<<< orphan*/  etr_sync ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  cpu_online_map ; 
 int FUNC1 (struct etr_aib*,struct etr_aib*,int) ; 
 struct etr_aib etr_port0 ; 
 struct etr_aib etr_port1 ; 
 int /*<<< orphan*/  etr_sync_clock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct etr_aib*,struct etr_aib*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct clock_sync_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,struct clock_sync_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct etr_aib *aib, int port)
{
	struct clock_sync_data etr_sync;
	struct etr_aib *sync_port;
	int follows;
	int rc;

	/* Check if the current aib is adjacent to the sync port aib. */
	sync_port = (port == 0) ? &etr_port0 : &etr_port1;
	follows = FUNC1(sync_port, aib, port);
	FUNC3(sync_port, aib, sizeof(*aib));
	if (!follows)
		return -EAGAIN;
	FUNC4(&etr_sync, 0, sizeof(etr_sync));
	etr_sync.etr_aib = aib;
	etr_sync.etr_port = port;
	FUNC2();
	FUNC0(&etr_sync.cpus, FUNC5() - 1);
	rc = FUNC7(etr_sync_clock, &etr_sync, &cpu_online_map);
	FUNC6();
	return rc;
}