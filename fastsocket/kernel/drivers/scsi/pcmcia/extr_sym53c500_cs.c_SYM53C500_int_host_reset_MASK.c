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

/* Variables and functions */
 int /*<<< orphan*/  C4_IMG ; 
 int /*<<< orphan*/  CHIP_RESET ; 
 int CMD_REG ; 
 int CONFIG4 ; 
 int /*<<< orphan*/  SCSI_NOP ; 
 int /*<<< orphan*/  SCSI_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(int io_port)
{
	FUNC1(C4_IMG, io_port + CONFIG4);	/* REG0(io_port); */
	FUNC1(CHIP_RESET, io_port + CMD_REG);
	FUNC1(SCSI_NOP, io_port + CMD_REG);	/* required after reset */
	FUNC1(SCSI_RESET, io_port + CMD_REG);
	FUNC0(io_port);
}