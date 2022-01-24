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
struct mtd_info {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int FUNC0 (struct mtd_info*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,int*,int*) ; 

__attribute__((used)) static int FUNC2(struct mtd_info *mtd, loff_t from,
		void *buf, u8 *oob, int *corrected, int *uncorrected)
{
	int err;

	err = FUNC0(mtd, from, buf, oob);
	if (err)
		return err;
	FUNC1(buf, oob+13, corrected, uncorrected);
	FUNC1(buf+256, oob+8, corrected, uncorrected);
	return 0;
}