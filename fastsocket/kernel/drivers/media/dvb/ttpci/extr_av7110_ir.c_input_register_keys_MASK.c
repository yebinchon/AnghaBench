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
struct infrared {scalar_t__* key_map; TYPE_1__* input_dev; } ;
struct TYPE_2__ {scalar_t__* keycode; int keycodesize; int keycodemax; int /*<<< orphan*/  keybit; int /*<<< orphan*/  mscbit; int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ EV_KEY ; 
 scalar_t__ EV_MSC ; 
 scalar_t__ EV_REP ; 
 scalar_t__ KEY_MAX ; 
 scalar_t__ KEY_RESERVED ; 
 scalar_t__ MSC_RAW ; 
 scalar_t__ MSC_SCAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct infrared *ir)
{
	int i;

	FUNC2(EV_KEY, ir->input_dev->evbit);
	FUNC2(EV_REP, ir->input_dev->evbit);
	FUNC2(EV_MSC, ir->input_dev->evbit);

	FUNC2(MSC_RAW, ir->input_dev->mscbit);
	FUNC2(MSC_SCAN, ir->input_dev->mscbit);

	FUNC1(ir->input_dev->keybit, 0, sizeof(ir->input_dev->keybit));

	for (i = 0; i < FUNC0(ir->key_map); i++) {
		if (ir->key_map[i] > KEY_MAX)
			ir->key_map[i] = 0;
		else if (ir->key_map[i] > KEY_RESERVED)
			FUNC2(ir->key_map[i], ir->input_dev->keybit);
	}

	ir->input_dev->keycode = ir->key_map;
	ir->input_dev->keycodesize = sizeof(ir->key_map[0]);
	ir->input_dev->keycodemax = FUNC0(ir->key_map);
}