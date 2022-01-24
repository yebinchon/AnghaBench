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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIRMWARE_IMAGE_BASE ; 
 int /*<<< orphan*/  H2M_BBP_AGENT ; 
 int /*<<< orphan*/  H2M_MAILBOX_CSR ; 
 int /*<<< orphan*/  PBF_SYS_CTRL ; 
 int /*<<< orphan*/  PBF_SYS_CTRL_HOST_RAM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct rt2x00_dev *rt2x00dev,
				    const u8 *data, const size_t len)
{
	u32 reg;

	/*
	 * enable Host program ram write selection
	 */
	reg = 0;
	FUNC0(&reg, PBF_SYS_CTRL_HOST_RAM_WRITE, 1);
	FUNC2(rt2x00dev, PBF_SYS_CTRL, reg);

	/*
	 * Write firmware to device.
	 */
	FUNC1(rt2x00dev, FIRMWARE_IMAGE_BASE,
				       data, len);

	FUNC2(rt2x00dev, PBF_SYS_CTRL, 0x00000);
	FUNC2(rt2x00dev, PBF_SYS_CTRL, 0x00001);

	FUNC2(rt2x00dev, H2M_BBP_AGENT, 0);
	FUNC2(rt2x00dev, H2M_MAILBOX_CSR, 0);

	return 0;
}