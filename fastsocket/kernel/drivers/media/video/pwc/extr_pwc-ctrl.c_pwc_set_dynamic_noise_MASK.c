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
struct pwc_device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  DYNAMIC_NOISE_CONTROL_FORMATTER ; 
 int /*<<< orphan*/  SET_LUM_CTL ; 
 int FUNC0 (struct pwc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 

int FUNC1(struct pwc_device *pdev, int noise)
{
	unsigned char buf;

	if (noise < 0)
		noise = 0;
	if (noise > 3)
		noise = 3;
	buf = noise;
	return FUNC0(pdev,
		SET_LUM_CTL, DYNAMIC_NOISE_CONTROL_FORMATTER,
		&buf, sizeof(buf));
}