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
struct wacom_wac {char* data; TYPE_1__* shared; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int touch_down; int /*<<< orphan*/  stylus_in_proximity; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 size_t WACOM_PKGLEN_TPC1FG ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct wacom_wac *wacom, void *wcombo, size_t len)
{
	char *data = wacom->data;
	bool prox;
	int x = 0, y = 0;

	if (!wacom->shared->stylus_in_proximity) {
		if (len == WACOM_PKGLEN_TPC1FG) {
			prox = data[0] & 0x01;
			x = FUNC0(&data[1]);
			y = FUNC0(&data[3]);
		} else { /* with capacity */
			prox = data[1] & 0x01;
			x = FUNC1((__le16 *)&data[2]);
			y = FUNC1((__le16 *)&data[4]);
		}
	} else
		/* force touch out when pen is in prox */
		prox = 0;

	if (prox) {
		FUNC2(wcombo, ABS_X, x);
		FUNC2(wcombo, ABS_Y, y);
	}
	FUNC3(wcombo, BTN_TOUCH, prox);

	/* keep touch state for pen events */
	wacom->shared->touch_down = prox;

	return 1;
}