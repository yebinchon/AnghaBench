#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ chip_id; int name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EAFNOSUPPORT ; 
 int /*<<< orphan*/  IF_SPI_FW_NAME_MAX ; 
 TYPE_1__* chip_id_to_device_name ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(u16 card_id,
			      char *helper_fw, char *main_fw)
{
	int i;
	for (i = 0; i < FUNC0(chip_id_to_device_name); ++i) {
		if (card_id == chip_id_to_device_name[i].chip_id)
			break;
	}
	if (i == FUNC0(chip_id_to_device_name)) {
		FUNC1("Unsupported chip_id: 0x%02x\n", card_id);
		return -EAFNOSUPPORT;
	}
	FUNC2(helper_fw, IF_SPI_FW_NAME_MAX, "libertas/gspi%d_hlp.bin",
		 chip_id_to_device_name[i].name);
	FUNC2(main_fw, IF_SPI_FW_NAME_MAX, "libertas/gspi%d.bin",
		 chip_id_to_device_name[i].name);
	return 0;
}