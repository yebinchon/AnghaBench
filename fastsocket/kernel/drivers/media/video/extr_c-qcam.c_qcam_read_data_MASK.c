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
struct qcam_device {int /*<<< orphan*/  pport; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct qcam_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qcam_device*,int) ; 

__attribute__((used)) static int FUNC3(struct qcam_device *qcam)
{
	unsigned int idata;
	FUNC2(qcam, 0);
	if (FUNC1(qcam, 1)) return -1;
	idata = FUNC0(qcam->pport) & 0xf0;
	FUNC2(qcam, 1);
	if (FUNC1(qcam, 0)) return -1;
	idata |= (FUNC0(qcam->pport) >> 4);
	return idata;
}