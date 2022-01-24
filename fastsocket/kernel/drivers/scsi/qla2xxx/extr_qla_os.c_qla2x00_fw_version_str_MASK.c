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
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int fw_major_version; int fw_minor_version; int fw_subminor_version; int fw_attributes; } ;

/* Variables and functions */
 int BIT_9 ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static char *
FUNC2(struct scsi_qla_host *vha, char *str)
{
	char un_str[10];
	struct qla_hw_data *ha = vha->hw;

	FUNC0(str, "%d.%02d.%02d ", ha->fw_major_version,
	    ha->fw_minor_version,
	    ha->fw_subminor_version);

	if (ha->fw_attributes & BIT_9) {
		FUNC1(str, "FLX");
		return (str);
	}

	switch (ha->fw_attributes & 0xFF) {
	case 0x7:
		FUNC1(str, "EF");
		break;
	case 0x17:
		FUNC1(str, "TP");
		break;
	case 0x37:
		FUNC1(str, "IP");
		break;
	case 0x77:
		FUNC1(str, "VI");
		break;
	default:
		FUNC0(un_str, "(%x)", ha->fw_attributes);
		FUNC1(str, un_str);
		break;
	}
	if (ha->fw_attributes & 0x100)
		FUNC1(str, "X");

	return (str);
}