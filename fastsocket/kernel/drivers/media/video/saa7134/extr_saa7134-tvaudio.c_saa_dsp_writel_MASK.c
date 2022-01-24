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
typedef  int /*<<< orphan*/  u32 ;
struct saa7134_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAA7135_DSP_RWSTATE_WRR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct saa7134_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(struct saa7134_dev *dev, int reg, u32 value)
{
	int err;

	FUNC0("dsp write reg 0x%x = 0x%06x\n",reg<<2,value);
	err = FUNC1(dev,SAA7135_DSP_RWSTATE_WRR);
	if (err < 0)
		return err;
	FUNC2(reg,value);
	err = FUNC1(dev,SAA7135_DSP_RWSTATE_WRR);
	if (err < 0)
		return err;
	return 0;
}