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
struct saa7146_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIP_FORMAT_CTRL ; 
 int MASK_05 ; 
 int MASK_21 ; 
 int /*<<< orphan*/  MC2 ; 
 int /*<<< orphan*/  FUNC0 (struct saa7146_dev*,unsigned long,int*) ; 
 int FUNC1 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct saa7146_dev *dev, unsigned long palette)
{
	u32 clip_format = FUNC1(dev, CLIP_FORMAT_CTRL);

	/* call helper function */
	FUNC0(dev,palette,&clip_format);

	/* update the hps registers */
	FUNC2(dev, CLIP_FORMAT_CTRL, clip_format);
	FUNC2(dev, MC2, (MASK_05 | MASK_21));
}