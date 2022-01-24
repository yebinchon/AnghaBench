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
typedef  int u8 ;
struct wf_sensor {int /*<<< orphan*/  name; } ;
struct wf_lm75_sensor {int inited; int /*<<< orphan*/ * i2c; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct wf_lm75_sensor* FUNC6 (struct wf_sensor*) ; 

__attribute__((used)) static int FUNC7(struct wf_sensor *sr, s32 *value)
{
	struct wf_lm75_sensor *lm = FUNC6(sr);
	s32 data;

	if (lm->i2c == NULL)
		return -ENODEV;

	/* Init chip if necessary */
	if (!lm->inited) {
		u8 cfg_new, cfg = (u8)FUNC1(lm->i2c, 1);

		FUNC0("wf_lm75: Initializing %s, cfg was: %02x\n",
		    sr->name, cfg);

		/* clear shutdown bit, keep other settings as left by
		 * the firmware for now
		 */
		cfg_new = cfg & ~0x01;
		FUNC3(lm->i2c, 1, cfg_new);
		lm->inited = 1;

		/* If we just powered it up, let's wait 200 ms */
		FUNC5(200);
	}

	/* Read temperature register */
	data = (s32)FUNC4(FUNC2(lm->i2c, 0));
	data <<= 8;
	*value = data;

	return 0;
}