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
typedef  int u32 ;
struct asd_ha_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EPAUSE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PAUSED ; 
 int /*<<< orphan*/  PAUSE_DELAY ; 
 int PAUSE_TRIES ; 
 int FUNC2 (struct asd_ha_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct asd_ha_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct asd_ha_struct *asd_ha, int lseq)
{
	u32    arp2ctl;
	int    count = PAUSE_TRIES;

	arp2ctl = FUNC2(asd_ha, FUNC1(lseq));
	if (arp2ctl & PAUSED)
		return 0;

	FUNC3(asd_ha, FUNC1(lseq), arp2ctl | EPAUSE);
	do {
		arp2ctl = FUNC2(asd_ha, FUNC1(lseq));
		if (arp2ctl & PAUSED)
			return 0;
		FUNC4(PAUSE_DELAY);
	} while (--count > 0);

	FUNC0("couldn't pause LSEQ %d\n", lseq);
	return -1;
}