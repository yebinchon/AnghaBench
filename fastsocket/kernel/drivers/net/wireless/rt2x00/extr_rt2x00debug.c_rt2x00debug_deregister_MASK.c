#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct rt2x00debug_intf* data; } ;
struct TYPE_3__ {struct rt2x00debug_intf* data; } ;
struct rt2x00debug_intf {TYPE_2__ driver_blob; TYPE_1__ chipset_blob; int /*<<< orphan*/  driver_folder; int /*<<< orphan*/  driver_entry; int /*<<< orphan*/  chipset_entry; int /*<<< orphan*/  cap_flags; int /*<<< orphan*/  dev_flags; int /*<<< orphan*/  register_folder; int /*<<< orphan*/  csr_off_entry; int /*<<< orphan*/  csr_val_entry; int /*<<< orphan*/  eeprom_off_entry; int /*<<< orphan*/  eeprom_val_entry; int /*<<< orphan*/  bbp_off_entry; int /*<<< orphan*/  bbp_val_entry; int /*<<< orphan*/  rf_off_entry; int /*<<< orphan*/  rf_val_entry; int /*<<< orphan*/  rfcsr_off_entry; int /*<<< orphan*/  rfcsr_val_entry; int /*<<< orphan*/  queue_folder; int /*<<< orphan*/  queue_frame_dump_entry; int /*<<< orphan*/  queue_stats_entry; int /*<<< orphan*/  crypto_stats_entry; int /*<<< orphan*/  frame_dump_skbqueue; } ;
struct rt2x00_dev {struct rt2x00debug_intf* debugfs_intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00debug_intf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(struct rt2x00_dev *rt2x00dev)
{
	struct rt2x00debug_intf *intf = rt2x00dev->debugfs_intf;

	if (FUNC3(!intf))
		return;

	FUNC2(&intf->frame_dump_skbqueue);

#ifdef CONFIG_RT2X00_LIB_CRYPTO
	debugfs_remove(intf->crypto_stats_entry);
#endif
	FUNC0(intf->queue_stats_entry);
	FUNC0(intf->queue_frame_dump_entry);
	FUNC0(intf->queue_folder);
	FUNC0(intf->rfcsr_val_entry);
	FUNC0(intf->rfcsr_off_entry);
	FUNC0(intf->rf_val_entry);
	FUNC0(intf->rf_off_entry);
	FUNC0(intf->bbp_val_entry);
	FUNC0(intf->bbp_off_entry);
	FUNC0(intf->eeprom_val_entry);
	FUNC0(intf->eeprom_off_entry);
	FUNC0(intf->csr_val_entry);
	FUNC0(intf->csr_off_entry);
	FUNC0(intf->register_folder);
	FUNC0(intf->dev_flags);
	FUNC0(intf->cap_flags);
	FUNC0(intf->chipset_entry);
	FUNC0(intf->driver_entry);
	FUNC0(intf->driver_folder);
	FUNC1(intf->chipset_blob.data);
	FUNC1(intf->driver_blob.data);
	FUNC1(intf);

	rt2x00dev->debugfs_intf = NULL;
}