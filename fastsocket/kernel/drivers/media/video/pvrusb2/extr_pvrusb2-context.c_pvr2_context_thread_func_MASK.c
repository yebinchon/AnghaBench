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
struct pvr2_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_CTXT ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_context*) ; 
 int pvr2_context_cleaned_flag ; 
 int /*<<< orphan*/  pvr2_context_cleanup_data ; 
 struct pvr2_context* pvr2_context_notify_first ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  pvr2_context_sync_data ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void *foo)
{
	struct pvr2_context *mp;

	FUNC4(PVR2_TRACE_CTXT,"pvr2_context thread start");

	do {
		while ((mp = pvr2_context_notify_first) != NULL) {
			FUNC2(mp, 0);
			FUNC1(mp);
		}
		FUNC5(
			pvr2_context_sync_data,
			((pvr2_context_notify_first != NULL) ||
			 FUNC3()));
	} while (!FUNC3());

	pvr2_context_cleaned_flag = !0;
	FUNC6(&pvr2_context_cleanup_data);

	FUNC4(PVR2_TRACE_CTXT,"pvr2_context thread cleaned up");

	FUNC5(
		pvr2_context_sync_data,
		FUNC0());

	FUNC4(PVR2_TRACE_CTXT,"pvr2_context thread end");

	return 0;
}