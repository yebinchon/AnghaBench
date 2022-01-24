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
struct macio_chip {int dummy; } ;

/* Variables and functions */
 int HRW_IOBUS_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct macio_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  save_alt_dbdma ; 
 int /*<<< orphan*/  save_dbdma ; 
 int* save_fcr ; 
 int save_mbcr ; 

__attribute__((used)) static void FUNC4(struct macio_chip *macio, int secondary)
{
	if (secondary) {
		FUNC1(0x38, save_fcr[2]);
		(void)FUNC0(0x38);
		FUNC3(1);
		FUNC1(0x3c, save_fcr[3]);
		(void)FUNC0(0x38);
		FUNC3(10);
		FUNC2(macio, save_alt_dbdma);
	} else {
		FUNC1(0x38, save_fcr[0] | HRW_IOBUS_ENABLE);
		(void)FUNC0(0x38);
		FUNC3(1);
		FUNC1(0x3c, save_fcr[1]);
		(void)FUNC0(0x38);
		FUNC3(1);
		FUNC1(0x34, save_mbcr);
		(void)FUNC0(0x38);
		FUNC3(10);
		FUNC2(macio, save_dbdma);
	}
}