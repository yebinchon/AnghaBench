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
 int /*<<< orphan*/  GAMMA_FORMATTER ; 
 int /*<<< orphan*/  GET_LUM_CTL ; 
 int FUNC0 (struct pwc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

int FUNC1(struct pwc_device *pdev)
{
	char buf;
	int ret;

	ret = FUNC0(pdev,
		GET_LUM_CTL, GAMMA_FORMATTER, &buf, sizeof(buf));
	if (ret < 0)
		return ret;
	return buf;
}