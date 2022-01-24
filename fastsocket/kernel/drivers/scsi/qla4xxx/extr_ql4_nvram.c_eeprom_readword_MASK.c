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
typedef  int /*<<< orphan*/  u16 ;
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM93C56A_READ ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_qla_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*) ; 

__attribute__((used)) static int FUNC4(int eepromAddr, u16 * value,
			   struct scsi_qla_host * ha)
{
	FUNC3(ha);
	FUNC0(ha, FM93C56A_READ, eepromAddr);
	FUNC1(ha, value);
	FUNC2(ha);
	return 1;
}