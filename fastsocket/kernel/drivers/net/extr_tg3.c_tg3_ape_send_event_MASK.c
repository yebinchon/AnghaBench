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
 int APE_EVENT_1 ; 
 int APE_EVENT_STATUS_EVENT_PENDING ; 
 int APE_FW_STATUS_READY ; 
 int APE_SEG_SIG_MAGIC ; 
 int EAGAIN ; 
 int /*<<< orphan*/  TG3_APE_EVENT ; 
 int /*<<< orphan*/  TG3_APE_EVENT_STATUS ; 
 int /*<<< orphan*/  TG3_APE_FW_STATUS ; 
 int /*<<< orphan*/  TG3_APE_LOCK_MEM ; 
 int /*<<< orphan*/  TG3_APE_SEG_SIG ; 
 int FUNC0 (struct tg3*,int) ; 
 int FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct tg3 *tp, u32 event)
{
	int err;
	u32 apedata;

	apedata = FUNC1(tp, TG3_APE_SEG_SIG);
	if (apedata != APE_SEG_SIG_MAGIC)
		return -EAGAIN;

	apedata = FUNC1(tp, TG3_APE_FW_STATUS);
	if (!(apedata & APE_FW_STATUS_READY))
		return -EAGAIN;

	/* Wait for up to 1 millisecond for APE to service previous event. */
	err = FUNC0(tp, 1000);
	if (err)
		return err;

	FUNC3(tp, TG3_APE_EVENT_STATUS,
			event | APE_EVENT_STATUS_EVENT_PENDING);

	FUNC2(tp, TG3_APE_LOCK_MEM);
	FUNC3(tp, TG3_APE_EVENT, APE_EVENT_1);

	return 0;
}