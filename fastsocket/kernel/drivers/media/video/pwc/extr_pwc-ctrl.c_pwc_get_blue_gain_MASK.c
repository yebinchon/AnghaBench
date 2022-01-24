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
 int /*<<< orphan*/  GET_CHROM_CTL ; 
 int /*<<< orphan*/  PRESET_MANUAL_BLUE_GAIN_FORMATTER ; 
 int FUNC0 (struct pwc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 

int FUNC1(struct pwc_device *pdev, int *value)
{
	unsigned char buf;
	int ret;

	ret = FUNC0(pdev,
		GET_CHROM_CTL, PRESET_MANUAL_BLUE_GAIN_FORMATTER,
		&buf, sizeof(buf));
	if (ret < 0)
	    return ret;
	*value = buf << 8;
	return 0;
}