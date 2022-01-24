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
struct rwrt_feature_desc {int /*<<< orphan*/  curr; int /*<<< orphan*/  feature_code; } ;
struct cdrom_device_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ CDF_RWRT ; 
 int /*<<< orphan*/  CD_OPEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct cdrom_device_info*,struct rwrt_feature_desc*) ; 
 int FUNC3 (struct cdrom_device_info*) ; 

__attribute__((used)) static int FUNC4(struct cdrom_device_info *cdi)
{
	struct rwrt_feature_desc rfd;
	int ret;

	if ((ret = FUNC3(cdi)))
		return ret;

	if ((ret = FUNC2(cdi, &rfd)))
		return ret;
	else if (CDF_RWRT == FUNC0(rfd.feature_code))
		ret = !rfd.curr;

	FUNC1(CD_OPEN, "can open for random write\n");
	return ret;
}