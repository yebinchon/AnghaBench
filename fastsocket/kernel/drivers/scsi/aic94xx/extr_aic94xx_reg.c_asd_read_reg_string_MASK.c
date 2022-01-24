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
typedef  int /*<<< orphan*/  u32 ;
struct asd_ha_struct {int /*<<< orphan*/  iolock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct asd_ha_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct asd_ha_struct *asd_ha, void *dst,
			 u32 offs, int count)
{
	u8 *p = dst;
	unsigned long flags;

	FUNC1(&asd_ha->iolock, flags);
	for ( ; count > 0; count--, offs++, p++)
		*p = FUNC0(asd_ha, offs);
	FUNC2(&asd_ha->iolock, flags);
}