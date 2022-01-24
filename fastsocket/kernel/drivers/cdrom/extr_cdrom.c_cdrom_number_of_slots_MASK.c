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
struct cdrom_device_info {scalar_t__ capacity; } ;
struct TYPE_2__ {int nslots; } ;
struct cdrom_changer_info {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CD_CHANGER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct cdrom_device_info*,struct cdrom_changer_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdrom_changer_info*) ; 
 struct cdrom_changer_info* FUNC3 (int,int /*<<< orphan*/ ) ; 

int FUNC4(struct cdrom_device_info *cdi) 
{
	int status;
	int nslots = 1;
	struct cdrom_changer_info *info;

	FUNC0(CD_CHANGER, "entering cdrom_number_of_slots()\n"); 
	/* cdrom_read_mech_status requires a valid value for capacity: */
	cdi->capacity = 0; 

	info = FUNC3(sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	if ((status = FUNC1(cdi, info)) == 0)
		nslots = info->hdr.nslots;

	FUNC2(info);
	return nslots;
}