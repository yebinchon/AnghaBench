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
struct TYPE_2__ {int left; int top; int width; int height; } ;
struct saa7134_dev {int ctl_y_odd; int ctl_y_even; TYPE_1__ crop_current; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct saa7134_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct saa7134_dev*,int,int) ; 

__attribute__((used)) static void FUNC22(struct saa7134_dev *dev, int task,
		     int width, int height, int interlace)
{
	int prescale,xscale,yscale,y_even,y_odd;
	int h_start, h_stop, v_start, v_stop;
	int div = interlace ? 2 : 1;

	/* setup video scaler */
	h_start = dev->crop_current.left;
	v_start = dev->crop_current.top/2;
	h_stop  = (dev->crop_current.left + dev->crop_current.width -1);
	v_stop  = (dev->crop_current.top + dev->crop_current.height -1)/2;

	FUNC19(FUNC2(task), h_start &  0xff);
	FUNC19(FUNC3(task), h_start >> 8);
	FUNC19(FUNC4(task),  h_stop  &  0xff);
	FUNC19(FUNC5(task),  h_stop  >> 8);
	FUNC19(FUNC10(task), v_start &  0xff);
	FUNC19(FUNC11(task), v_start >> 8);
	FUNC19(FUNC12(task),  v_stop  &  0xff);
	FUNC19(FUNC13(task),  v_stop  >> 8);

	prescale = dev->crop_current.width / width;
	if (0 == prescale)
		prescale = 1;
	xscale = 1024 * dev->crop_current.width / prescale / width;
	yscale = 512 * div * dev->crop_current.height / height;
	FUNC18("prescale=%d xscale=%d yscale=%d\n",prescale,xscale,yscale);
	FUNC20(dev,task,prescale);
	FUNC19(FUNC0(task),      xscale &  0xff);
	FUNC19(FUNC1(task),      xscale >> 8);
	FUNC21(dev,task,yscale);

	FUNC19(FUNC8(task),     width  & 0xff);
	FUNC19(FUNC9(task),     width  >> 8);
	FUNC19(FUNC6(task),      height/div & 0xff);
	FUNC19(FUNC7(task),      height/div >> 8);

	/* deinterlace y offsets */
	y_odd  = dev->ctl_y_odd;
	y_even = dev->ctl_y_even;
	FUNC19(FUNC14(task), y_odd);
	FUNC19(FUNC15(task), y_even);
	FUNC19(FUNC16(task), y_odd);
	FUNC19(FUNC17(task), y_even);
}