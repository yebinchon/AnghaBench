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
typedef  int u32 ;
struct ata_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  SCR_CONTROL ; 
 int /*<<< orphan*/  SCR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct ata_link*,int /*<<< orphan*/ ,char*,int,int,...) ; 
 scalar_t__ FUNC1 (struct ata_link*) ; 
 scalar_t__ FUNC2 (struct ata_link*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct ata_link *link)
{
	u32 sstatus, scontrol, tmp;

	if (FUNC2(link, SCR_STATUS, &sstatus))
		return;
	FUNC2(link, SCR_CONTROL, &scontrol);

	if (FUNC1(link)) {
		tmp = (sstatus >> 4) & 0xf;
		FUNC0(link, KERN_INFO,
				"SATA link up %s (SStatus %X SControl %X)\n",
				FUNC3(tmp), sstatus, scontrol);
	} else {
		FUNC0(link, KERN_INFO,
				"SATA link down (SStatus %X SControl %X)\n",
				sstatus, scontrol);
	}
}