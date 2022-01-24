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
struct TYPE_2__ {int tblo; int tbhi; int crb; } ;
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 int MS_TICKS ; 
 TYPE_1__ ciaa ; 
 int /*<<< orphan*/  ms_wait_completion ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(int ms)
{
	int ticks;
	static DEFINE_MUTEX(mutex);

	if (ms > 0) {
		FUNC0(&mutex);
		ticks = MS_TICKS*ms-1;
		ciaa.tblo=ticks%256;
		ciaa.tbhi=ticks/256;
		ciaa.crb=0x19; /*count eclock, force load, one-shoot, start */
		FUNC2(&ms_wait_completion);
		FUNC1(&mutex);
	}
}