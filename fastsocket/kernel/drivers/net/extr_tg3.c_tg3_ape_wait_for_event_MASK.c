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
struct tg3 {int dummy; } ;

/* Variables and functions */
 int APE_EVENT_STATUS_EVENT_PENDING ; 
 int /*<<< orphan*/  TG3_APE_EVENT_STATUS ; 
 int FUNC0 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct tg3 *tp, u32 timeout_us)
{
	u32 i, apedata;

	for (i = 0; i < timeout_us / 10; i++) {
		apedata = FUNC0(tp, TG3_APE_EVENT_STATUS);

		if (!(apedata & APE_EVENT_STATUS_EVENT_PENDING))
			break;

		FUNC1(10);
	}

	return i == timeout_us / 10;
}