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
struct saa7134_dev {TYPE_1__* tvnorm; } ;
struct mainscan {int carr; int std; int /*<<< orphan*/  name; } ;
typedef  int __s32 ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int SAA7134_LEVEL_READOUT1 ; 
 int /*<<< orphan*/  SCAN_SAMPLE_DELAY ; 
 int audio_debug ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7134_dev*,int,int) ; 
 scalar_t__ FUNC4 (struct saa7134_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct saa7134_dev *dev, struct mainscan *scan)
{
	__s32 left,right,value;

	if (audio_debug > 1) {
		int i;
		FUNC0("debug %d:",scan->carr);
		for (i = -150; i <= 150; i += 30) {
			FUNC3(dev,scan->carr+i,scan->carr+i);
			FUNC2(SAA7134_LEVEL_READOUT1 >> 2);
			if (FUNC4(dev,SCAN_SAMPLE_DELAY))
				return -1;
			value = FUNC2(SAA7134_LEVEL_READOUT1 >> 2);
			if (0 == i)
				FUNC1("  #  %6d  # ",value >> 16);
			else
				FUNC1(" %6d",value >> 16);
		}
		FUNC1("\n");
	}
	if (dev->tvnorm->id & scan->std) {
		FUNC3(dev,scan->carr-90,scan->carr-90);
		FUNC2(SAA7134_LEVEL_READOUT1 >> 2);
		if (FUNC4(dev,SCAN_SAMPLE_DELAY))
			return -1;
		left = FUNC2(SAA7134_LEVEL_READOUT1 >> 2);

		FUNC3(dev,scan->carr+90,scan->carr+90);
		FUNC2(SAA7134_LEVEL_READOUT1 >> 2);
		if (FUNC4(dev,SCAN_SAMPLE_DELAY))
			return -1;
		right = FUNC2(SAA7134_LEVEL_READOUT1 >> 2);

		left >>= 16;
		right >>= 16;
		value = left > right ? left - right : right - left;
		FUNC0("scanning %d.%03d MHz [%4s] =>  dc is %5d [%d/%d]\n",
			scan->carr / 1000, scan->carr % 1000,
			scan->name, value, left, right);
	} else {
		value = 0;
		FUNC0("skipping %d.%03d MHz [%4s]\n",
			scan->carr / 1000, scan->carr % 1000, scan->name);
	}
	return value;
}