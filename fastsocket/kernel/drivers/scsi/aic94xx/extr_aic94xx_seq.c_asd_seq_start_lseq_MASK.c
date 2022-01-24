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
struct asd_ha_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct asd_ha_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct asd_ha_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lseq_idle_loop ; 

__attribute__((used)) static int FUNC3(struct asd_ha_struct *asd_ha, int lseq)
{
	/* Reset the ARP2 instruction to location zero. */
	FUNC2(asd_ha, FUNC0(lseq), lseq_idle_loop);

	/* Unpause the LmSEQ  */
	return FUNC1(asd_ha, lseq);
}