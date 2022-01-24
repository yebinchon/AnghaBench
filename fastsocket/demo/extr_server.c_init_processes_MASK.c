#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct worker_data {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  process; scalar_t__ cpu_id; scalar_t__ trancnt; } ;

/* Variables and functions */
 int MAP_ANON ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int num_workers ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 scalar_t__ start_cpu ; 
 TYPE_1__* wdata ; 

void FUNC8(void)
{
	int i, pid;

	wdata = FUNC5(NULL, num_workers * sizeof(struct worker_data),
		     PROT_READ|PROT_WRITE,
		     MAP_ANON|MAP_SHARED,
		     -1, 0);

	FUNC4(wdata, 0, num_workers * sizeof(struct worker_data));

	if (wdata == NULL) {
		FUNC6("Unable to mmap shared global wdata");
		FUNC1();
	}

	for(i = 0; i < num_workers; i++) {
		wdata[i].trancnt = 0;
		wdata[i].cpu_id = i + start_cpu;

		if ( (pid = FUNC2()) < 0) {
			FUNC6("Unable to fork child process");
			FUNC1();
		} else if( pid == 0) {
			wdata[i].process = FUNC3();
			FUNC7((void *)&(wdata[i]));
			FUNC0(0);
		}
	}
}