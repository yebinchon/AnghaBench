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
struct scsi_device {int /*<<< orphan*/  model; int /*<<< orphan*/  vendor; } ;
struct TYPE_2__ {scalar_t__ model; scalar_t__ vendor; } ;

/* Variables and functions */
 TYPE_1__* hp_sw_dh_data_list ; 
 scalar_t__ FUNC0 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct scsi_device *sdev)
{
	int i;

	if (FUNC0(sdev))
		return false;

	for (i = 0; hp_sw_dh_data_list[i].vendor; i++) {
		if (!FUNC2(sdev->vendor, hp_sw_dh_data_list[i].vendor,
			FUNC1(hp_sw_dh_data_list[i].vendor)) &&
		    !FUNC2(sdev->model, hp_sw_dh_data_list[i].model,
			FUNC1(hp_sw_dh_data_list[i].model))) {
			return true;
		}
	}
	return false;
}