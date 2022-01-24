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
typedef  int /*<<< orphan*/  u8 ;
struct rt2x00_dev {scalar_t__ freq_offset; } ;

/* Variables and functions */
 scalar_t__ FREQ_OFFSET_BOUND ; 
 int /*<<< orphan*/  RFCSR17_CODE ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct rt2x00_dev *rt2x00dev)
{
	u8 rfcsr;

	FUNC0(rt2x00dev, 17, &rfcsr);
	if (rt2x00dev->freq_offset > FREQ_OFFSET_BOUND)
		FUNC2(&rfcsr, RFCSR17_CODE, FREQ_OFFSET_BOUND);
	else
		FUNC2(&rfcsr, RFCSR17_CODE, rt2x00dev->freq_offset);
	FUNC1(rt2x00dev, 17, rfcsr);
}