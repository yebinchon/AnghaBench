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
struct cdrom_device_info {unsigned int capacity; } ;
struct cdrom_changer_info {TYPE_1__* slots; } ;
struct TYPE_2__ {int change; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDC_MEDIA_CHANGED ; 
 int /*<<< orphan*/  CDC_SELECT_DISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long CDSL_CURRENT ; 
 int /*<<< orphan*/  CD_DO_IOCTL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct cdrom_device_info*,struct cdrom_changer_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct cdrom_changer_info*) ; 
 struct cdrom_changer_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct cdrom_device_info*,int) ; 

__attribute__((used)) static int FUNC6(struct cdrom_device_info *cdi,
		unsigned long arg)
{
	struct cdrom_changer_info *info;
	int ret;

	FUNC1(CD_DO_IOCTL, "entering CDROM_MEDIA_CHANGED\n");

	if (!FUNC0(CDC_MEDIA_CHANGED))
		return -ENOSYS;

	/* cannot select disc or select current disc */
	if (!FUNC0(CDC_SELECT_DISC) || arg == CDSL_CURRENT)
		return FUNC5(cdi, 1);

	if ((unsigned int)arg >= cdi->capacity)
		return -EINVAL;

	info = FUNC4(sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	ret = FUNC2(cdi, info);
	if (!ret)
		ret = info->slots[arg].change;
	FUNC3(info);
	return ret;
}