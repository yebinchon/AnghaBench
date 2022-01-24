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
typedef  int u8 ;
typedef  int u32 ;
struct wmi_interface {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  brightness; int /*<<< orphan*/  bluetooth; int /*<<< orphan*/  wireless; int /*<<< orphan*/  mailled; } ;

/* Variables and functions */
#define  ACER_CAP_BLUETOOTH 131 
#define  ACER_CAP_BRIGHTNESS 130 
#define  ACER_CAP_MAILLED 129 
#define  ACER_CAP_WIRELESS 128 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int FUNC0 (int,int*) ; 
 TYPE_1__* quirks ; 

__attribute__((used)) static acpi_status FUNC1(u32 *value, u32 cap,
struct wmi_interface *iface)
{
	int err;
	u8 result;

	switch (cap) {
	case ACER_CAP_MAILLED:
		switch (quirks->mailled) {
		default:
			err = FUNC0(0xA, &result);
			if (err)
				return AE_ERROR;
			*value = (result >> 7) & 0x1;
			return AE_OK;
		}
		break;
	case ACER_CAP_WIRELESS:
		switch (quirks->wireless) {
		case 1:
			err = FUNC0(0x7B, &result);
			if (err)
				return AE_ERROR;
			*value = result & 0x1;
			return AE_OK;
		case 2:
			err = FUNC0(0x71, &result);
			if (err)
				return AE_ERROR;
			*value = result & 0x1;
			return AE_OK;
		default:
			err = FUNC0(0xA, &result);
			if (err)
				return AE_ERROR;
			*value = (result >> 2) & 0x1;
			return AE_OK;
		}
		break;
	case ACER_CAP_BLUETOOTH:
		switch (quirks->bluetooth) {
		default:
			err = FUNC0(0xA, &result);
			if (err)
				return AE_ERROR;
			*value = (result >> 4) & 0x1;
			return AE_OK;
		}
		break;
	case ACER_CAP_BRIGHTNESS:
		switch (quirks->brightness) {
		default:
			err = FUNC0(0x83, &result);
			if (err)
				return AE_ERROR;
			*value = result;
			return AE_OK;
		}
		break;
	default:
		return AE_ERROR;
	}
	return AE_OK;
}