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
typedef  int /*<<< orphan*/  u32 ;
struct ata_link {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int SATA_PMP_PSCR_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct ata_link*,int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 unsigned int FUNC1 (struct ata_link*,int,int /*<<< orphan*/ *) ; 

int FUNC2(struct ata_link *link, int reg, u32 *r_val)
{
	unsigned int err_mask;

	if (reg > SATA_PMP_PSCR_CONTROL)
		return -EINVAL;

	err_mask = FUNC1(link, reg, r_val);
	if (err_mask) {
		FUNC0(link, KERN_WARNING, "failed to read SCR %d "
				"(Emask=0x%x)\n", reg, err_mask);
		return -EIO;
	}
	return 0;
}