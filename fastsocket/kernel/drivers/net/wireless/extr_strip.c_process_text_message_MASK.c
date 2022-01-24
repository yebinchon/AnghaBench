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
struct strip {int sx_count; int /*<<< orphan*/ * sx_buff; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct strip*) ; 
 int /*<<< orphan*/  FUNC1 (struct strip*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct strip*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void FUNC5(struct strip *strip_info)
{
	__u8 *msg = strip_info->sx_buff;
	int len = strip_info->sx_count;

	/* Check for anything that looks like it might be our radio name */
	/* (This is here for backwards compatibility with old firmware)  */
	if (len == 9 && FUNC2(strip_info, msg) == 0)
		return;

	if (FUNC4(msg, len, "OK"))
		return;		/* Ignore 'OK' responses from prior commands */
	if (FUNC4(msg, len, "ERROR"))
		return;		/* Ignore 'ERROR' messages */
	if (FUNC3(msg, len, "ate0q1"))
		return;		/* Ignore character echo back from the radio */

	/* Catch other error messages */
	/* (This is here for backwards compatibility with old firmware) */
	if (FUNC3(msg, len, "ERR_")) {
		FUNC1(strip_info, NULL, &msg[4], len - 4);
		return;
	}

	FUNC0("No initial *", strip_info);
}