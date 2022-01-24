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
struct scsi_qla_host {int eeprom_cmd_data; } ;

/* Variables and functions */
 int AUBURN_EEPROM_CS_0 ; 
 int /*<<< orphan*/  FUNC0 (int,struct scsi_qla_host*) ; 

__attribute__((used)) static int FUNC1(struct scsi_qla_host * ha)
{
	ha->eeprom_cmd_data = AUBURN_EEPROM_CS_0 | 0x000f0000;
	FUNC0(ha->eeprom_cmd_data, ha);
	return 1;
}