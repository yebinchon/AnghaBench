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
struct ace_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_BUSMODE ; 
 int /*<<< orphan*/  ACE_CFGLBA ; 
 int /*<<< orphan*/  ACE_CTRL ; 
 int /*<<< orphan*/  ACE_ERROR ; 
 int /*<<< orphan*/  ACE_FATSTAT ; 
 int /*<<< orphan*/  ACE_MPULBA ; 
 int /*<<< orphan*/  ACE_SECCNTCMD ; 
 int /*<<< orphan*/  ACE_STATUS ; 
 int /*<<< orphan*/  ACE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct ace_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ace_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ace_device *ace)
{
	FUNC2(ace->dev,
		 "    ctrl:  %.8x  seccnt/cmd: %.4x      ver:%.4x\n"
		 "    status:%.8x  mpu_lba:%.8x  busmode:%4x\n"
		 "    error: %.8x  cfg_lba:%.8x  fatstat:%.4x\n",
		 FUNC1(ace, ACE_CTRL),
		 FUNC0(ace, ACE_SECCNTCMD),
		 FUNC0(ace, ACE_VERSION),
		 FUNC1(ace, ACE_STATUS),
		 FUNC1(ace, ACE_MPULBA),
		 FUNC0(ace, ACE_BUSMODE),
		 FUNC1(ace, ACE_ERROR),
		 FUNC1(ace, ACE_CFGLBA), FUNC0(ace, ACE_FATSTAT));
}