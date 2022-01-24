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
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_2__ {int /*<<< orphan*/  num_in_wfs; } ;

/* Variables and functions */
 unsigned long AP_WAIT_TIMEOUT ; 
 unsigned long HZ ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* tboot ; 

__attribute__((used)) static int FUNC3(int num_aps)
{
	unsigned long timeout;

	timeout = AP_WAIT_TIMEOUT*HZ;
	while (FUNC0((atomic_t *)&tboot->num_in_wfs) != num_aps &&
	       timeout) {
		FUNC1(1);
		timeout--;
	}

	if (timeout)
		FUNC2("tboot wait for APs timeout\n");

	return !(FUNC0((atomic_t *)&tboot->num_in_wfs) == num_aps);
}