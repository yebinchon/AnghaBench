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
struct input_dev {int dummy; } ;
struct gc {int* pads; struct input_dev** dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_THUMB ; 
 int /*<<< orphan*/  BTN_TRIGGER ; 
 int GC_MAX_DEVICES ; 
 size_t GC_MULTI ; 
 size_t GC_MULTI2 ; 
 int GC_MULTI2_LENGTH ; 
 int GC_MULTI_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct gc*,int,unsigned char*) ; 
 int* gc_status_bit ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 

__attribute__((used)) static void FUNC4(struct gc *gc)
{
	unsigned char data[GC_MULTI2_LENGTH];
	struct input_dev *dev;
	int i, s;

	FUNC0(gc, gc->pads[GC_MULTI2] ? GC_MULTI2_LENGTH : GC_MULTI_LENGTH, data);

	for (i = 0; i < GC_MAX_DEVICES; i++) {

		dev = gc->dev[i];
		if (!dev)
			continue;

		s = gc_status_bit[i];

		if (s & (gc->pads[GC_MULTI] | gc->pads[GC_MULTI2])) {
			FUNC1(dev, ABS_X,  !(s & data[2]) - !(s & data[3]));
			FUNC1(dev, ABS_Y,  !(s & data[0]) - !(s & data[1]));
			FUNC2(dev, BTN_TRIGGER, s & data[4]);
		}

		if (s & gc->pads[GC_MULTI2])
			FUNC2(dev, BTN_THUMB, s & data[5]);

		FUNC3(dev);
	}
}